# List credit changes

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /user/creditChanges:
    get:
      summary: List credit changes
      deprecated: false
      description: ''
      tags:
        - User
        - 'Auth: JWT Required'
        - Pro
      parameters:
        - name: page_size
          in: query
          description: Page size.
          required: true
          example: 50
          schema:
            type: number
            minimum: 10
        - name: order_direction
          in: query
          description: ''
          required: false
          example: asc
          schema:
            type: string
            enum:
              - asc
              - desc
            x-apifox-enum:
              - value: asc
                name: ''
                description: ''
              - value: desc
                name: ''
                description: ''
            default: asc
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
                  01JXKVVTHHCVX1D7NG8M52KTVR: &ref_7
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      data:
                        type: object
                        properties:
                          pagination:
                            type: object
                            x-apifox-refs: &ref_0
                              01JXKVWCYAGB72E0WXN4Q0ZA6A:
                                $ref: '#/components/schemas/PaginationResults'
                                x-apifox-overrides:
                                  total_items: null
                            x-apifox-orders: &ref_1
                              - 01JXKVWCYAGB72E0WXN4Q0ZA6A
                            properties: {}
                          changes:
                            type: array
                            items:
                              type: object
                              properties:
                                changed_at: &ref_2
                                  type: string
                                  format: date-time
                                  examples:
                                    - '2025-05-08T18:28:46+08:00'
                                  description: Datetime when the event occurs.
                                diff: &ref_3
                                  type: integer
                                  examples:
                                    - -800
                                  description: Credit changed.
                                reason: &ref_4
                                  type: string
                                  description: Reason of the change.
                                  examples:
                                    - share_purchased
                              x-apifox-orders: &ref_5
                                - changed_at
                                - diff
                                - reason
                              required:
                                - changed_at
                                - diff
                                - reason
                        x-apifox-orders: &ref_6
                          - pagination
                          - changes
                        description: >-
                          Response content. In some error type, e.g. lock
                          conflicting errors, this field wil present details of
                          the error, e.g. who is locking the current file.
                        required:
                          - pagination
                          - changes
                      aggregated_error: null
                    required:
                      - data
                x-apifox-orders:
                  - 01JXKVVTHHCVX1D7NG8M52KTVR
                properties:
                  data:
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
                      changes:
                        type: array
                        items:
                          type: object
                          properties:
                            changed_at: *ref_2
                            diff: *ref_3
                            reason: *ref_4
                          x-apifox-orders: *ref_5
                          required:
                            - changed_at
                            - diff
                            - reason
                          x-apifox-ignore-properties: []
                    x-apifox-orders: *ref_6
                    description: >-
                      Response content. In some error type, e.g. lock
                      conflicting errors, this field wil present details of the
                      error, e.g. who is locking the current file.
                    required:
                      - pagination
                      - changes
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
                  pagination:
                    page: 0
                    page_size: 10
                    next_token: eyJpZCI6InFLT3doNyJ9
                    is_cursor: true
                  changes:
                    - changed_at: '2025-05-08T18:28:46+08:00'
                      diff: 800
                      reason: share_purchased
                    - changed_at: '2025-04-27T09:55:43+08:00'
                      diff: 800
                      reason: share_purchased
                    - changed_at: '2025-03-20T17:52:20+08:00'
                      diff: -300
                      reason: pay
                    - changed_at: '2025-03-18T20:30:43+08:00'
                      diff: -1
                      reason: adjust
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: User
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-308382673-run
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
          additionalProperties: *ref_7
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
