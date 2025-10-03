# List available storage policies

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /user/setting/policies:
    get:
      summary: List available storage policies
      deprecated: false
      description: List available storage policies for authenticated user.
      tags:
        - User/Setting
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
                  01JXKKBYCYQRSE0CFYAX3GE94D: &ref_1
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data:
                        type: array
                        items: &ref_0
                          $ref: '#/components/schemas/StoragePolicy'
                        description: >-
                          Response content. In some error type, e.g. lock
                          conflicting errors, this field wil present details of
                          the error, e.g. who is locking the current file.
                        nullable: true
                x-apifox-orders:
                  - 01JXKKBYCYQRSE0CFYAX3GE94D
                properties:
                  data:
                    type: array
                    items: *ref_0
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
                  - id: B1Fy
                    name: Minio
                    type: s3
                    max_size: 0
                  - id: mqHp
                    name: Cloudflare R2
                    type: s3
                    max_size: 0
                  - id: 0dsD
                    name: Google Cloud Storage
                    type: s3
                    max_size: 0
                  - id: NrTZ
                    name: Qiniu
                    type: qiniu
                    max_size: 0
                    relay: true
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: User/Setting
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-308312707-run
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
    StoragePolicy:
      type: object
      properties:
        id:
          type: string
          examples:
            - 96u1
          description: ID of the storage policy.
        name:
          type: string
          examples:
            - Default storage policy
          description: Display name of the storage policy.
        allowed_suffix:
          type: array
          items:
            type: string
            examples:
              - jpg
              - png
              - zip
            description: File extension name without leading `.`.
          description: >-
            List of file extensions allowed in this storage policy. Empty list
            means no limit on allowed extensions.
          nullable: true
        denied_suffix:
          type: array
          items:
            type: string
            description: File extension name without leading `.`.
          description: >-
            List of file extensions denied in this storage policy. Empty list
            means no limit on denied extensions.
          nullable: true
        type:
          type: string
          description: Storage provider type.
          enum:
            - local
            - qiniu
            - upyun
            - oss
            - cos
            - s3
            - onedrive
            - remote
            - obs
            - load_balance
            - ks3
          x-apifox-enum:
            - value: local
              name: ''
              description: ''
            - value: qiniu
              name: ''
              description: ''
            - value: upyun
              name: ''
              description: ''
            - value: oss
              name: ''
              description: ''
            - value: cos
              name: ''
              description: ''
            - value: s3
              name: ''
              description: ''
            - value: onedrive
              name: ''
              description: ''
            - value: remote
              name: ''
              description: ''
            - value: obs
              name: ''
              description: ''
            - value: load_balance
              name: ''
              description: ''
            - value: ks3
              name: ''
              description: ''
          examples:
            - local
        allowed_name_regexp:
          type: string
          description: If not empty, file name must match this regex.
          nullable: true
        denied_name_regexp:
          type: string
          description: If not empty, file name must NOT match this regex.
          nullable: true
        max_size:
          type: number
          description: Max allowed size of a single file. `0` means no limit.
        relay:
          type: boolean
          description: >-
            Indicates whether upload needs to be proxyed by Cloudreve. If
            `true`, the client should treat it as a `local` storage policy to
            process uploading.
          nullable: true
        weight:
          type: number
          description: >-
            Load balance weight of this storage policy. Only presented if this
            storage policy is child of a load balance storage policy.
          nullable: true
        children:
          type: array
          items: *ref_0
          description: >-
            Child storage policies, only presented if policy type equals
            `load_balance`.
          nullable: true
        chunk_concurrency:
          type: integer
          description: Number of threads to use for concurrent chunk uploading.
          nullable: true
      x-apifox-orders:
        - id
        - name
        - allowed_suffix
        - denied_suffix
        - type
        - allowed_name_regexp
        - denied_name_regexp
        - max_size
        - relay
        - weight
        - children
        - chunk_concurrency
      required:
        - id
        - max_size
        - type
        - name
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
  securitySchemes: {}
servers: []
security: []

```
