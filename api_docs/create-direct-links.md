# Create direct links

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /file/source:
    put:
      summary: Create direct links
      deprecated: false
      description: >-
        Create a direct link that can be used to access the file's content
        directly. Only file owners or administrators can create direct links.
      tags:
        - File/Direct Link
        - 'Auth: JWT Required'
      parameters: []
      requestBody:
        content:
          application/json:
            schema:
              type: object
              properties:
                uris:
                  type: array
                  items:
                    type: string
                  description: >-
                    List of [URI](https://docs.cloudreve.org/api/file-uri) of
                    the target files.
              x-apifox-orders:
                - uris
              required:
                - uris
              x-apifox-ignore-properties: []
            example:
              uris:
                - >-
                  cloudreve://my/Inspirations/cloudreve_4.0.0-beta.7_windows_amd64.zip
                - cloudreve://my/Inspirations/archive.zip
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JXCDYQV729E4NWQZV25JY3P0: &ref_3
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      data:
                        type: array
                        items:
                          type: object
                          properties:
                            link: &ref_0
                              type: string
                              description: URL of the direct link.
                            file_url: &ref_1
                              type: string
                              description: >-
                                [URI](https://docs.cloudreve.org/api/file-uri)
                                of the target file.
                          x-apifox-orders: &ref_2
                            - link
                            - file_url
                          required:
                            - link
                            - file_url
                        description: >-
                          Response content. In some error type, e.g. lock
                          conflicting errors, this field wil present details of
                          the error, e.g. who is locking the current file.
                        nullable: true
                x-apifox-orders:
                  - 01JXCDYQV729E4NWQZV25JY3P0
                properties:
                  data:
                    type: array
                    items:
                      type: object
                      properties:
                        link: *ref_0
                        file_url: *ref_1
                      x-apifox-orders: *ref_2
                      required:
                        - link
                        - file_url
                      x-apifox-ignore-properties: []
                    description: >-
                      Response content. In some error type, e.g. lock
                      conflicting errors, this field wil present details of the
                      error, e.g. who is locking the current file.
                    nullable: true
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
                      Map of multiple error in batch request. The key is the
                      failed resource ID, it could be a file URI or a resource
                      ID, the value is a `Response`.
                    additionalProperties: *ref_3
                    required:
                      - 01JSRF01R97ZK0FE2NPYS810YS
                    x-apifox-ignore-properties: []
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
                  - code
                x-apifox-ignore-properties:
                  - data
                  - code
                  - msg
                  - error
                  - aggregated_error
                  - correlation_id
              examples:
                '1':
                  summary: All success
                  value:
                    code: 0
                    data:
                      - link: >-
                          http://localhost:5173/f/b8JH4/cloudreve_4.0.0-beta.7_windows_amd64.zip
                        file_url: >-
                          cloudreve://my/Inspirations/cloudreve_4.0.0-beta.7_windows_amd64.zip
                      - link: http://localhost:5173/f/8Qeue/archive.zip
                        file_url: cloudreve://my/Inspirations/archive.zip
                    msg: ''
                '2':
                  summary: Partial success
                  value:
                    code: 40081
                    data:
                      - link: >-
                          http://localhost:5173/f/b8JH4/cloudreve_4.0.0-beta.7_windows_amd64.zip
                        file_url: >-
                          cloudreve://my/Inspirations/cloudreve_4.0.0-beta.7_windows_amd64.zip
                    aggregated_error:
                      cloudreve://my/Inspirations/archive.zip:
                        code: 40016
                        msg: Path not exist
                        error: 'ent: file not found'
                        correlation_id: 21e6adf9-8c4b-4d0e-8200-7ebfb235a07f
                    msg: >-
                      failed to get target file: failed to walk into
                      "archive.zip": Path not exist: ent: file not found
                    error: 'aggregate error: one or more operation failed'
                    correlation_id: 21e6adf9-8c4b-4d0e-8200-7ebfb235a07f
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: File/Direct Link
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-306837572-run
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
          additionalProperties: *ref_3
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
