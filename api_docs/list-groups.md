# List groups

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /group/list:
    get:
      summary: List groups
      deprecated: false
      description: List all user groups.
      tags:
        - Group
        - 'Auth: JWT Required'
        - Pro
      parameters: []
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JXKW9ZXSEVE0GKTDY83547BB: &ref_2
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data:
                        type: array
                        items:
                          type: object
                          x-apifox-refs: &ref_0
                            01K21F33KH7A27RS9K8BS1CMYC:
                              $ref: '#/components/schemas/Group'
                              x-apifox-overrides:
                                permission: null
                                trash_retention: null
                                direct_link_batch_size: null
                          x-apifox-orders: &ref_1
                            - 01K21F33KH7A27RS9K8BS1CMYC
                          properties: {}
                        description: >-
                          Response content. In some error type, e.g. lock
                          conflicting errors, this field wil present details of
                          the error, e.g. who is locking the current file.
                        nullable: true
                x-apifox-orders:
                  - 01JXKW9ZXSEVE0GKTDY83547BB
                properties:
                  data:
                    type: array
                    items:
                      type: object
                      x-apifox-refs: *ref_0
                      x-apifox-orders: *ref_1
                      properties:
                        id:
                          type: string
                          examples:
                            - 1AI8
                          description: ID of the group.
                        name:
                          type: string
                          description: Name of the group.
                          examples:
                            - Admin
                      required:
                        - id
                        - name
                      x-apifox-ignore-properties:
                        - id
                        - name
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
                  - correlation_id
              example:
                code: 0
                data:
                  - id: z4u4
                    name: Admin
                  - id: 1AI8
                    name: User
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: Group
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-308383497-run
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
    Group:
      type: object
      properties:
        id:
          type: string
          examples:
            - 1AI8
          description: ID of the group.
        name:
          type: string
          description: Name of the group.
          examples:
            - Admin
        permission:
          type: string
          description: >-
            Permission boolset of the group. Refer to
            [Boolset](https://docs.cloudreve.org/api/boolset) for how to read
            it.
          examples:
            - /f8B
        direct_link_batch_size:
          type: integer
          examples:
            - 10
          description: >-
            The maximum number of files allowed for users to obtain direct links
            in a single batch, fill in 0 means no batch generation of direct
            links is allowed.
        trash_retention:
          type: integer
          description: >-
            The retention time in seconds of files in the trash bin, files will
            be permanently deleted after the expiration time. Changing this
            setting will not affect files already in the trash bin.
          examples:
            - 864000
      required:
        - id
        - name
        - permission
        - direct_link_batch_size
        - trash_retention
      x-apifox-orders:
        - id
        - name
        - permission
        - direct_link_batch_size
        - trash_retention
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
  securitySchemes: {}
servers: []
security: []

```
