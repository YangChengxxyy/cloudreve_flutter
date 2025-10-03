# Select files to download

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /workflow/download/{task_id}:
    patch:
      summary: Select files to download
      deprecated: false
      description: >-
        Select/Unselect specific files in a bittorrent download task. This
        method only works for ongoing remote download tasks. For files not
        included in the request, their download behaviour is unchanged.
      tags:
        - Workflow/Remote Download
        - 'Auth: JWT Required'
      parameters:
        - name: task_id
          in: path
          description: ID of the remote download tasks.
          required: true
          example: jAMaCN
          schema:
            type: string
      requestBody:
        content:
          application/json:
            schema:
              type: object
              properties:
                files:
                  type: array
                  items:
                    type: object
                    properties:
                      index:
                        type: integer
                        description: Index of the file in file list of the task props.
                      download:
                        type: boolean
                        description: Whether to download this file.
                    required:
                      - index
                    x-apifox-orders:
                      - index
                      - download
                    x-apifox-ignore-properties: []
                  description: List of files to change.
              required:
                - files
              x-apifox-orders:
                - files
              x-apifox-ignore-properties: []
            example:
              files:
                - index: 7
                  download: false
                - index: 8
                  download: false
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JVP6XZQST9PJ7903E792NHT1: &ref_1
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      correlation_id: null
                      aggregated_error: null
                      error: null
                      msg: &ref_0
                        type: string
                        description: Human readable error message (if any).
                      data: null
                x-apifox-orders:
                  - 01JVP6XZQST9PJ7903E792NHT1
                properties:
                  code:
                    type: integer
                    description: |-
                      Response code.
                      `0` - Success.
                    default: 0
                    examples:
                      - 0
                  msg: *ref_0
                required:
                  - code
                x-apifox-ignore-properties:
                  - code
                  - msg
              example:
                code: 0
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: Workflow/Remote Download
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-298203346-run
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
          additionalProperties: *ref_1
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
  securitySchemes: {}
servers: []
security: []

```
