# Update account

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /devices/dav/{id}:
    patch:
      summary: Update account
      deprecated: false
      description: ''
      tags:
        - WebDAV
        - 'Auth: JWT Required'
      parameters:
        - name: id
          in: path
          description: ID of the existing WebDAV account.
          required: true
          example: YnCp
          schema:
            type: string
      requestBody:
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/CreateDavAccountService'
            example:
              name: new account
              uri: cloudreve://my/002i8OT6osgrXrQEqPp1mMqB9UfxjB0q
              proxy: true
              readonly: true
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JXKX347VY9X6AVHD7MMHXFSX: &ref_1
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data: &ref_0
                        $ref: '#/components/schemas/DavAccount'
                    required:
                      - data
                x-apifox-orders:
                  - 01JXKX347VY9X6AVHD7MMHXFSX
                properties:
                  data: *ref_0
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
                  id: YnCp
                  created_at: '2025-06-13T13:43:14+08:00'
                  name: new account
                  uri: cloudreve://my/002i8OT6osgrXrQEqPp1mMqB9UfxjB0q
                  password: kkf138mdipcwghkodndepu6sjasn9q0j
                  options: Aw==
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: WebDAV
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-308389580-run
components:
  schemas:
    CreateDavAccountService:
      type: object
      properties:
        uri:
          type: string
          description: >-
            [URI](https://docs.cloudreve.org/api/file-uri) of the relative root
            folder.
        name:
          type: string
          minLength: 1
          maxLength: 255
          description: Annotation of the account.
        readonly:
          type: boolean
          description: Whether this account is readonly.
          nullable: true
        proxy:
          type: boolean
          description: Whether reverse proxy is enabled for this account.
          nullable: true
      x-apifox-orders:
        - uri
        - name
        - readonly
        - proxy
      required:
        - uri
        - name
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
    DavAccount:
      type: object
      properties:
        id:
          type: string
          examples:
            - WNuO
          description: ID of the WebDAV account.
        created_at:
          type: string
          format: date-time
          examples:
            - '2023-12-04T18:51:42+08:00'
          description: Datetime when the account is created.
        name:
          type: string
          examples:
            - My account
          description: Annotation of this account.
        uri:
          type: string
          examples:
            - cloudreve://my
          description: '[URI](https://docs.cloudreve.org/api/file-uri) of the root folder.'
        password:
          type: string
          examples:
            - f6zxgh7j4yo3vuvtdpcxd6na89efvmpo
          description: Generated password of this account.
        options:
          type: string
          description: >-
            [Boolset](https://docs.cloudreve.org/api/boolset) encoded account
            options.
      x-apifox-orders:
        - id
        - created_at
        - name
        - uri
        - password
        - options
      required:
        - id
        - created_at
        - name
        - uri
        - password
        - options
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
  securitySchemes: {}
servers: []
security: []

```
