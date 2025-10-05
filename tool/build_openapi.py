#!/usr/bin/env python3
"""Extract OpenAPI specs from API markdown docs and merge into a single document."""

import json
import sys
from pathlib import Path
from typing import Any, Dict, Iterable

import yaml

ROOT = Path(__file__).resolve().parent.parent
API_DOCS_DIR = ROOT / "api_docs"
OUTPUT_DIR = ROOT / "openapi"
OUTPUT_PATH = OUTPUT_DIR / "cloudreve.json"

JsonObj = Dict[str, Any]


def deep_merge(base: JsonObj, incoming: JsonObj, *, context: str = "") -> JsonObj:
    """Deep merge ``incoming`` into ``base`` (mutating base) with shallow validation."""
    for key, value in incoming.items():
        new_context = f"{context}.{key}" if context else key
        if key not in base:
            base[key] = value
            continue

        existing = base[key]
        if isinstance(existing, dict) and isinstance(value, dict):
            deep_merge(existing, value, context=new_context)
        elif isinstance(existing, list) and isinstance(value, list):
            for item in value:
                if item not in existing:
                    existing.append(item)
        else:
            if existing != value:
                print(
                    f"[warn] Overwriting conflicting value at '{new_context}':\n"
                    f"       current={existing!r}\n       new={value!r}",
                    file=sys.stderr,
                )
            base[key] = value
    return base


def iter_yaml_blocks(markdown: str) -> Iterable[str]:
    lower = markdown.lower()
    needle = "```yaml"
    offset = 0
    while True:
        start = lower.find(needle, offset)
        if start == -1:
            break
        block_start = start + len(needle)
        end = markdown.find("\n```", block_start)
        if end == -1:
            raise ValueError("Unterminated ```yaml block")
        yield markdown[block_start:end]
        offset = end + 4  # jump past the closing fence


def extract_yaml_blocks(markdown: str) -> JsonObj:
    merged: JsonObj = {}
    for raw_block in iter_yaml_blocks(markdown):
        block = raw_block.strip("\n")
        if not block.strip():
            continue
        parsed = yaml.safe_load(block)
        if not isinstance(parsed, dict):
            continue
        deep_merge(merged, parsed)
    return merged


def sanitize_schema(node: Any) -> Any:
    if isinstance(node, dict):
        sanitized: JsonObj = {}
        for key, value in list(node.items()):
            if key == "examples":
                continue
            if key == "" or key is None:
                continue
            sanitized[key] = sanitize_schema(value)

        schema_type = sanitized.get("type")
        if schema_type == "null":
            sanitized.pop("type", None)
            sanitized["nullable"] = True
        if schema_type == "array":
            items = sanitized.get("items")
            if isinstance(items, dict) and items.get("type") == "null":
                items.pop("type", None)
                items["nullable"] = True
        required = sanitized.get("required")
        if isinstance(required, list):
            sanitized.pop("required", None)
        if "properties" in sanitized and isinstance(sanitized["properties"], dict):
            sanitized["properties"] = {
                prop_key: prop_val
                for prop_key, prop_val in sanitized["properties"].items()
                if prop_key
            }
            metadata_schema = sanitized["properties"].get("metadata")
            if isinstance(metadata_schema, dict):
                metadata_schema.setdefault("nullable", True)
        return sanitized
    if isinstance(node, list):
        return [sanitize_schema(item) for item in node]
    return node


def main() -> None:
    if not API_DOCS_DIR.exists():
        print(f"api_docs directory not found at {API_DOCS_DIR}", file=sys.stderr)
        sys.exit(1)

    merged: JsonObj = {}

    for path in sorted(API_DOCS_DIR.glob("*.md")):
        content = path.read_text(encoding="utf-8")
        spec = extract_yaml_blocks(content)
        if not spec:
            continue
        deep_merge(merged, spec, context=path.name)

    if not merged:
        print("No OpenAPI content found in api_docs", file=sys.stderr)
        sys.exit(1)

    cleaned = sanitize_schema(merged)

    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
    OUTPUT_PATH.write_text(json.dumps(cleaned, indent=2, ensure_ascii=False), encoding="utf-8")
    print(f"Wrote merged OpenAPI spec to {OUTPUT_PATH}")


if __name__ == "__main__":
    main()
