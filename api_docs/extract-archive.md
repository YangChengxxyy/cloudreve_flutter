# Extract archive

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /workflow/extract:
    post:
      summary: Extract archive
      deprecated: false
      description: Create a task to extract all files in a given archive file.
      tags:
        - Workflow
        - 'Auth: JWT Required'
      parameters: []
      requestBody:
        content:
          application/json:
            schema:
              type: object
              x-apifox-refs:
                01JVNZYNNBPBMC9X7D9YEDRRZA:
                  $ref: '#/components/schemas/ArchiveWorkflowService'
                  x-apifox-overrides:
                    src:
                      type: array
                      items: &ref_0
                        type: string
                        examples:
                          - cloudreve://my/1.zip
                      description: Source file URIs. Exact 1 item is expected.
                      minItems: 1
                      maxItems: 1
                  required:
                    - src
              x-apifox-orders:
                - 01JVNZYNNBPBMC9X7D9YEDRRZA
              properties:
                src:
                  type: array
                  items: *ref_0
                  description: Source file URIs. Exact 1 item is expected.
                  minItems: 1
                  maxItems: 1
                dst:
                  type: string
                  description: URI of destination folder to store output files.
                  examples:
                    - cloudreve://my/dst
                preferred_node_id:
                  type: string
                  description: >-
                    Select preferred node to handle this task. Only available in
                    pro edition. Option of nodes can be get from [List available
                    nodes](./list-available-nodes-308315715e0).
                  examples:
                    - aO9z
                encoding:
                  type: string
                  description: >-
                    Encoding charset of the source archive file. By default it's
                    `utf8`.
                  examples:
                    - gb18030
                password:
                  type: string
                  description: Optional paassword for `zip` or `7z` archive files.
                  nullable: true
                file_mask:
                  type: array
                  items:
                    type: string
                  description: >-
                    List of files to select. If presented, only files in this
                    list, or contains any of it as prefix will be extracted.
                  nullable: true
              required:
                - src
                - dst
              x-apifox-ignore-properties:
                - src
                - dst
                - preferred_node_id
                - encoding
                - password
                - file_mask
            example:
              src:
                - cloudreve://my/1/cloudreve_4.0.0-beta.7_windows_amd64.zip
              dst: cloudreve://my/1
              preferred_node_id: xmhb
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JVP04S9EDRWQ00SCQ85DTXYA: &ref_2
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      correlation_id: null
                      aggregated_error: null
                      error: null
                      data: &ref_1
                        $ref: '#/components/schemas/TaskResponse'
                    required:
                      - data
                x-apifox-orders:
                  - 01JVP04S9EDRWQ00SCQ85DTXYA
                properties:
                  data: *ref_1
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
                required:
                  - data
                  - code
                x-apifox-ignore-properties:
                  - data
                  - code
                  - msg
              example:
                code: 0
                data:
                  created_at: '2025-05-20T12:43:28.791573+08:00'
                  updated_at: '2025-05-20T12:43:28.791574+08:00'
                  id: wzBlcG
                  status: queued
                  type: extract_archive
                  summary:
                    props:
                      dst: cloudreve://my/1
                      src: >-
                        cloudreve://my/1/cloudreve_4.0.0-beta.7_windows_amd64.zip
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: Workflow
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-298113451-run
components:
  schemas:
    ArchiveWorkflowService:
      type: object
      properties:
        src:
          type: array
          items:
            type: string
            examples:
              - cloudreve://my/1.zip
          description: Source file URIs.
        dst:
          type: string
          description: URI of destination folder to store output files.
          examples:
            - cloudreve://my/dst
        preferred_node_id:
          type: string
          description: >-
            Select preferred node to handle this task. Only available in pro
            edition. Option of nodes can be get from [List available
            nodes](./list-available-nodes-308315715e0).
          examples:
            - aO9z
        encoding:
          type: string
          description: Encoding charset of the source archive file. By default it's `utf8`.
          examples:
            - gb18030
        password:
          type: string
          description: Optional paassword for `zip` or `7z` archive files.
          nullable: true
        file_mask:
          type: array
          items:
            type: string
          description: >-
            List of files to select. If presented, only files in this list, or
            contains any of it as prefix will be extracted.
          nullable: true
      x-apifox-orders:
        - src
        - dst
        - preferred_node_id
        - encoding
        - password
        - file_mask
      required:
        - src
        - dst
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
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
    TaskResponse:
      type: object
      properties:
        created_at:
          type: string
          format: date-time
          examples:
            - '2025-04-22T17:13:06+08:00'
        updated_at:
          type: string
          format: date-time
          examples:
            - '2025-04-22T17:13:06+08:00'
        id:
          type: string
          examples:
            - LO5GtW
          description: ID of the tasks.
        status:
          type: string
          description: Status of the task
          examples:
            - completed
          enum:
            - queued
            - processing
            - suspending
            - error
            - canceled
            - completed
          x-apifox-enum:
            - value: queued
              name: ''
              description: Tasks is queued and wait to be processed.
            - value: processing
              name: ''
              description: Task is being processed.
            - value: suspending
              name: ''
              description: >-
                Task is suspended for async operations, it will be resumed
                later.
            - value: error
              name: ''
              description: Task is failed with error.
            - value: canceled
              name: ''
              description: Task is canceled
            - value: completed
              name: ''
              description: Task is completed.
        type:
          type: string
          examples:
            - extract_archive
          enum:
            - media_meta
            - entity_recycle_routine
            - explicit_entity_recycle
            - upload_sentinel_check
            - create_archive
            - extract_archive
            - relocate
            - remote_download
            - import
          x-apifox-enum:
            - value: media_meta
              name: ''
              description: Extract media metadata.
            - value: entity_recycle_routine
              name: ''
              description: Stale entities recycle routine.
            - value: explicit_entity_recycle
              name: ''
              description: Explicitly entity recycle.
            - value: upload_sentinel_check
              name: ''
              description: Upload sentinel check.
            - value: create_archive
              name: ''
              description: Create archive file.
            - value: extract_archive
              name: ''
              description: Extract archive file
            - value: relocate
              name: ''
              description: Relocate file storage policy.
            - value: remote_download
              name: ''
              description: Remote download.
            - value: import
              name: ''
              description: Import files from external storage.
        summary:
          type: object
          properties:
            phase:
              type: string
              examples:
                - finish
              description: >-
                Current phase(sub-step) of the task. The possible value differs
                from different task types.
            props:
              type: object
              properties: {}
              x-apifox-orders: []
              additionalProperties:
                type: string
              description: Key-value map of task specific props.
              x-apifox-ignore-properties: []
          x-apifox-orders:
            - phase
            - props
          required:
            - phase
            - props
          x-apifox-ignore-properties: []
          nullable: true
        duration:
          type: integer
          description: Tasl executed duration in milliseconds.
          examples:
            - 1908
          nullable: true
        resume_time:
          type: integer
          description: Time stamp of the next expected resume time for suspended task.
          examples:
            - 1745313204
          nullable: true
        error:
          type: string
          description: Error message (if any).
          nullable: true
        error_history:
          type: array
          items:
            type: string
          description: List of error messages in previous retries (if any).
          nullable: true
        retry_count:
          type: integer
          description: Retry count.
          nullable: true
        node:
          $ref: '#/components/schemas/Node'
          description: Node of which this tasks is distributed onto.
      required:
        - created_at
        - updated_at
        - id
        - status
        - type
        - node
      x-apifox-orders:
        - created_at
        - updated_at
        - id
        - status
        - type
        - summary
        - duration
        - resume_time
        - error
        - error_history
        - retry_count
        - node
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
    Node:
      type: object
      properties:
        id:
          type: string
          description: ID of the node.
          examples:
            - xmhb
        name:
          type: string
          examples:
            - Master
          description: Name of the node.
        type:
          type: string
          enum:
            - master
            - slave
          x-apifox-enum:
            - value: master
              name: ''
              description: Master node.
            - value: slave
              name: ''
              description: Slave node.
          description: Type of the node.
        capabilities:
          type: string
          description: >-
            [Boolset](https://docs.cloudreve.org/en/api/boolset) encoded node
            capabilities.
      required:
        - id
        - name
        - type
        - capabilities
      x-apifox-orders:
        - id
        - name
        - type
        - capabilities
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
  securitySchemes: {}
servers: []
security: []

```
