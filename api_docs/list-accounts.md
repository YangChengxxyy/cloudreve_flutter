# List accounts

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /devices/dav:
    get:
      summary: List accounts
      deprecated: false
      description: List all WebDAV accounts under authenticated user.
      tags:
        - WebDAV
        - 'Auth: JWT Required'
      parameters:
        - name: page_size
          in: query
          description: Page size.
          required: true
          example: 50
          schema:
            type: integer
            minimum: 10
            maximum: 100
        - name: next_page_token
          in: query
          description: >-
            Token for requesting next page. Empty value means requesting the
            first page.
          required: false
          schema:
            type: string
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JXKWRNFSHCJD1RX8DZYPQMZC: &ref_4
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data:
                        type: array
                        items:
                          type: object
                          properties:
                            pagination:
                              type: object
                              x-apifox-refs: &ref_0
                                01JXKWS9Y0KCCSEEA88Q051989:
                                  $ref: '#/components/schemas/PaginationResults'
                                  x-apifox-overrides:
                                    total_items: null
                              x-apifox-orders: &ref_1
                                - 01JXKWS9Y0KCCSEEA88Q051989
                              properties: {}
                            accounts:
                              type: array
                              items: &ref_2
                                $ref: '#/components/schemas/DavAccount'
                              description: List of WebDAV accounts.
                          x-apifox-orders: &ref_3
                            - pagination
                            - accounts
                          required:
                            - pagination
                            - accounts
                        description: >-
                          Response content. In some error type, e.g. lock
                          conflicting errors, this field wil present details of
                          the error, e.g. who is locking the current file.
                        nullable: true
                x-apifox-orders:
                  - 01JXKWRNFSHCJD1RX8DZYPQMZC
                properties:
                  data:
                    type: array
                    items:
                      type: object
                      properties:
                        pagination:
                          type: object
                          x-apifox-refs: *ref_0
                          x-apifox-orders: *ref_1
                          properties:
                            page:
                              type: integer
                              examples:
                                - 1
                              description: >-
                                Current page starting from `0`, only applied to
                                offset pagination.
                            page_size:
                              type: integer
                              examples:
                                - 50
                              description: Maximum items included in one page.
                            next_token:
                              type: string
                              examples:
                                - eyJpZCI6Inh4cUR1QSJ9
                              description: >-
                                Token used to request the next page in cursor
                                pagination.
                            is_cursor:
                              type: boolean
                              description: Whether the response is using cursor pagination.
                          required:
                            - page
                            - page_size
                            - next_token
                          x-apifox-ignore-properties:
                            - page
                            - page_size
                            - next_token
                            - is_cursor
                        accounts:
                          type: array
                          items: *ref_2
                          description: List of WebDAV accounts.
                      x-apifox-orders: *ref_3
                      required:
                        - pagination
                        - accounts
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
                  accounts:
                    - id: 4ycW
                      created_at: '2025-06-13T13:37:27+08:00'
                      name: my files
                      uri: cloudreve://my
                      password: f6zxgh7j4yo3vuvtdpcxd6na89efvmpo
                      options: ''
                    - id: WNuO
                      created_at: '2023-12-04T18:51:42+08:00'
                      name: test
                      uri: cloudreve://Y8bCn@share
                      password: ery99robfkr7oxhwqp6hbshpus782l5k
                      options: AA==
                  pagination:
                    page: 0
                    page_size: 50
                    is_cursor: true
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: WebDAV
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-308386165-run
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
          additionalProperties: *ref_4
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
    PaginationResults:
      type: object
      properties:
        page:
          type: integer
          examples:
            - 1
          description: Current page starting from `0`, only applied to offset pagination.
        page_size:
          type: integer
          examples:
            - 50
          description: Maximum items included in one page.
        total_items:
          type: integer
          examples:
            - 5664
          description: Total count of items, only applied to offset pagination.
        next_token:
          type: string
          examples:
            - eyJpZCI6Inh4cUR1QSJ9
          description: Token used to request the next page in cursor pagination.
        is_cursor:
          type: boolean
          description: Whether the response is using cursor pagination.
      x-apifox-orders:
        - page
        - page_size
        - total_items
        - next_token
        - is_cursor
      required:
        - page
        - page_size
        - next_token
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
  securitySchemes: {}
servers: []
security: []

```
