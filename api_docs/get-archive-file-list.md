# Get archive file list

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /file/archive:
    get:
      summary: Get archive file list
      deprecated: false
      description: Get the content of archive files. Only supports `7z` or `zip` file.
      tags:
        - File
        - 'Auth: JWT Optional'
      parameters:
        - name: uri
          in: query
          description: '[URI](https://docs.cloudreve.org/api/file-uri) of the archive file.'
          required: true
          example: cloudreve://my/pdfjs-4.10.38-dist.zip
          schema:
            type: string
        - name: entity
          in: query
          description: Optional file version ID.
          required: false
          example: zoIE
          schema:
            type: string
            nullable: true
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01K44GRQQMKWG9S1GHQH9Y3Q49: &ref_2
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data:
                        type: object
                        properties:
                          files:
                            type: array
                            items: &ref_0
                              $ref: '#/components/schemas/ArchivedFile'
                        x-apifox-orders: &ref_1
                          - files
                        description: >-
                          Response content. In some error type, e.g. lock
                          conflicting errors, this field wil present details of
                          the error, e.g. who is locking the current file.
                        required:
                          - files
                    required:
                      - data
                x-apifox-orders:
                  - 01K44GRQQMKWG9S1GHQH9Y3Q49
                properties:
                  data:
                    type: object
                    properties:
                      files:
                        type: array
                        items: *ref_0
                    x-apifox-orders: *ref_1
                    description: >-
                      Response content. In some error type, e.g. lock
                      conflicting errors, this field wil present details of the
                      error, e.g. who is locking the current file.
                    required:
                      - files
                    x-apifox-ignore-properties: []
                  code:
                    type: integer
                    description: |-
                      Response code.
                      `0` - Success.
                    default: 0
                    examples:
                      - 0
                  msg:
                    type: string
                    description: Human readable error message (if any).
                  error:
                    type: string
                    description: Internal error message, only visable in debug mode.
                    nullable: true
                  correlation_id:
                    type: string
                    description: >-
                      Correlation ID of the request. Only presented on failed
                      reqeust.
                    format: uuid
                    examples:
                      - b4351ecc-ee1a-4455-bc94-2c3dbcc58538
                    nullable: true
                required:
                  - data
                  - code
                x-apifox-ignore-properties:
                  - data
                  - code
                  - msg
                  - error
                  - correlation_id
              example:
                code: 0
                data:
                  files:
                    - name: LICENSE
                      size: 10174
                      updated_at: '2024-12-31T16:26:12Z'
                      is_directory: false
                    - name: build
                      size: 0
                      updated_at: '2024-12-31T16:26:12Z'
                      is_directory: true
                    - name: web
                      size: 0
                      updated_at: '2024-12-31T16:26:12Z'
                      is_directory: true
                    - name: build/pdf.mjs
                      size: 658371
                      updated_at: '2024-12-31T16:26:12Z'
                      is_directory: false
                    - name: build/pdf.mjs.map
                      size: 1759138
                      updated_at: '2024-12-31T16:26:12Z'
                      is_directory: false
                    - name: build/pdf.sandbox.mjs
                      size: 727293
                      updated_at: '2024-12-31T16:26:12Z'
                      is_directory: false
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: File
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-344346494-run
components:
  schemas:
    Response:
      type: object
      properties:
        data:
          type: string
        code:
          type: integer
          description: |-
            Response code.
            `0` - Success.
          default: 0
          examples:
            - 0
        msg:
          type: string
          description: Human readable error message (if any).
        error:
          type: string
          description: Internal error message, only visable in debug mode.
          nullable: true
        aggregated_error:
          type: object
          properties: {}
          x-apifox-orders:
            - 01JSRF01R97ZK0FE2NPYS810YS
          description: >-
            Map of multiple error in batch request. The key is the failed
            resource ID, it could be a file URI or a resource ID, the value is a
            `Response`.
          additionalProperties: *ref_2
          required:
            - 01JSRF01R97ZK0FE2NPYS810YS
          x-apifox-ignore-properties: []
          nullable: true
        correlation_id:
          type: string
          description: Correlation ID of the request. Only presented on failed reqeust.
          format: uuid
          examples:
            - b4351ecc-ee1a-4455-bc94-2c3dbcc58538
          nullable: true
      x-apifox-orders:
        - data
        - code
        - msg
        - error
        - aggregated_error
        - correlation_id
      required:
        - data
        - code
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
    ArchivedFile:
      type: object
      properties:
        name:
          type: string
          description: Path of the file in the archive.
          examples:
            - web/cmaps/Adobe-CNS1-UCS2.bcmap
        size:
          type: integer
          description: Size of the file uncompressed.
          examples:
            - 41193
        updated_at:
          type: string
          format: date-time
          examples:
            - '2024-12-31T16:26:12Z'
          description: Datetime when the file is modified.
        is_directory:
          type: boolean
          description: Whether this is a directory instead of a file.
          nullable: true
      required:
        - name
        - size
        - updated_at
      x-apifox-orders:
        - name
        - size
        - updated_at
        - is_directory
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
  securitySchemes: {}
servers: []
security: []

```
