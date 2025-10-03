# Patch metadata

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /file/metadata:
    patch:
      summary: Patch metadata
      deprecated: false
      description: >-
        Modify [metadata](https://docs.cloudreve.org/api/metadata) of the given
        file.
      tags:
        - File
        - 'Auth: JWT Optional'
      parameters:
        - name: X-Cr-Purchase-Ticket
          in: header
          description: >-
            Can be used to authenticate to paid share links with a anonymous
            identity. The ticket value can be obtained after an anonymous user
            purchase a paid share link.
          required: false
          example: 1f63aa26-edc0-40ce-950a-cb4d4323158e
          schema:
            type: string
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
                  minItems: 1
                  description: >-
                    List of [URI](https://docs.cloudreve.org/api/file-uri) of
                    the target files.
                patches:
                  type: array
                  items:
                    type: object
                    properties:
                      key:
                        type: string
                        examples:
                          - customize:icon_color
                        description: >-
                          Metadata key. For patch operation, only a set of
                          selected key prefixs are allowed:

                          `sys:*`,`dav:*`, `customize:*`, `tag:*`.
                      value:
                        type: string
                        description: Value of the metadata.
                        nullable: true
                      remove:
                        type: boolean
                        description: >-
                          If set to `true`, metadata with given key will be
                          removed.
                        nullable: true
                    x-apifox-orders:
                      - key
                      - value
                      - remove
                    required:
                      - key
                    x-apifox-ignore-properties: []
                  description: List of metadata patches.
              x-apifox-orders:
                - uris
                - patches
              required:
                - uris
                - patches
              x-apifox-ignore-properties: []
            examples:
              '1':
                value:
                  uris:
                    - cloudreve://my/test_folder
                    - cloudreve://my/alit
                    - cloudreve://my/Inspirations
                  patches:
                    - key: customize:icon_color
                      value: '#d50000'
                      remove: false
                summary: Set folder icon color
              '2':
                value:
                  uris:
                    - cloudreve://my/Inspirations
                    - cloudreve://my/alit
                    - cloudreve://my/test_folder
                  patches:
                    - key: customize:icon_color
                      remove: true
                summary: Remove folder color customization
              '3':
                value:
                  uris:
                    - cloudreve://my/test_folder
                    - cloudreve://my/alit
                    - cloudreve://my/Inspirations
                  patches:
                    - key: tag:In Progress
                      value: '#009688'
                      remove: false
                summary: Set tags
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JXC53GDQ09GG6KKJFCY09KP6: &ref_0
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      data: null
                x-apifox-orders:
                  - 01JXC53GDQ09GG6KKJFCY09KP6
                properties:
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
                    additionalProperties: *ref_0
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
                  - code
                  - msg
                  - error
                  - aggregated_error
                  - correlation_id
              example:
                code: 0
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: File
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-306643896-run
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
          additionalProperties: *ref_0
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
