# List payments

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /user/payments:
    get:
      summary: List payments
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
          example: ''
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
                  01JXKW2X8K7DXD2RETPTTA2XPX: &ref_4
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data:
                        type: object
                        properties:
                          pagination:
                            type: object
                            x-apifox-refs: &ref_0
                              01JXKW3HMD7ARF9SRY2MYA3CKJ:
                                $ref: '#/components/schemas/PaginationResults'
                                x-apifox-overrides:
                                  total_items: null
                            x-apifox-orders: &ref_1
                              - 01JXKW3HMD7ARF9SRY2MYA3CKJ
                            properties: {}
                          payments:
                            type: array
                            items: &ref_2
                              $ref: '#/components/schemas/Payment'
                        x-apifox-orders: &ref_3
                          - pagination
                          - payments
                        description: >-
                          Response content. In some error type, e.g. lock
                          conflicting errors, this field wil present details of
                          the error, e.g. who is locking the current file.
                        required:
                          - pagination
                          - payments
                        nullable: true
                x-apifox-orders:
                  - 01JXKW2X8K7DXD2RETPTTA2XPX
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
                      payments:
                        type: array
                        items: *ref_2
                    x-apifox-orders: *ref_3
                    description: >-
                      Response content. In some error type, e.g. lock
                      conflicting errors, this field wil present details of the
                      error, e.g. who is locking the current file.
                    required:
                      - pagination
                      - payments
                    x-apifox-ignore-properties: []
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
                  pagination:
                    page: 0
                    page_size: 10
                    is_cursor: true
                  payments:
                    - id: 3YwCL
                      trade_no: '20250323225706001174243874'
                      name: Points
                      status: created
                      qyt: 1000
                      price_unit: 1
                      price_id: CNY
                      price_mark: ¥
                      price_one_unit: 100
                      created_at: '2025-03-23T22:57:07+08:00'
                      updated_at: '2025-03-23T22:57:07+08:00'
                      product_type: 4
                    - id: op5Fn
                      trade_no: '20250311111124004538711012'
                      name: Points
                      status: fulfilled
                      qyt: 100
                      price_unit: 1
                      price_id: CNY
                      price_mark: ¥
                      price_one_unit: 100
                      created_at: '2025-03-11T11:11:25+08:00'
                      updated_at: '2025-03-11T11:14:05+08:00'
                      product_type: 4
                    - id: 12pHb
                      trade_no: '20241206103237001943356169'
                      name: Basic Storage
                      status: created
                      qyt: 1
                      price_unit: 500
                      price_id: CNY
                      price_mark: ¥
                      price_one_unit: 100
                      created_at: '2024-12-06T10:32:39+08:00'
                      updated_at: '2024-12-06T10:32:39+08:00'
                      product_type: 3
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: User
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-308383051-run
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
    Payment:
      type: object
      properties:
        id:
          type: string
          examples:
            - z3ES6
          description: ID of the payment.
        trade_no:
          type: string
          examples:
            - '20250612135734002717035291'
          description: Trade number of the payment.
        name:
          type: string
          description: Title of the payment.
          examples:
            - 10 GB Storage Pack
        status:
          type: string
          enum:
            - created
            - paid
            - fulfilled
            - fulfill_failed
            - canceled
          x-apifox-enum:
            - value: created
              name: ''
              description: Payment created but not paid.
            - value: paid
              name: ''
              description: ' Payment paid by user'
            - value: fulfilled
              name: ''
              description: Payment is paid by user
            - value: fulfill_failed
              name: ''
              description: Payment is paid by user
            - value: canceled
              name: ''
              description: Payment canceled or expired.
          examples:
            - created
          description: Status of the payment.
        qyt:
          type: integer
          description: Quantity of desired product.
          examples:
            - 5
        price_unit:
          type: integer
          description: Price for one product, in the minimum currency unit, or in points.
          examples:
            - 50000
          nullable: true
        price_id:
          type: string
          examples:
            - CNY
          description: >-
            ISO [currency
            code](https://docs.cloudreve.org/en/payment/official#currency-symbol).
            Empty value means paying by points.
        price_mark:
          type: string
          examples:
            - $
          description: >-
            [Currency
            symbol](https://docs.cloudreve.org/en/payment/official#currency-symbol).
            Empty value means paying by points.
          nullable: true
        price_one_unit:
          type: integer
          description: >-
            Minimum [currency
            unit](https://docs.cloudreve.org/en/payment/official#currency-unit).
            Empty value means paying by points.
        created_at:
          type: string
          format: date-time
          examples:
            - '2025-06-12T13:57:35+08:00'
          description: Datetime when the payment is created.
        updated_at:
          type: string
          examples:
            - '2025-06-12T13:57:35+08:00'
          format: date-time
          description: Datetime when the payment is updated.
        product_type:
          type: integer
          enum:
            - 1
            - 2
            - 3
            - 4
          x-apifox-enum:
            - value: 1
              name: ''
              description: Paid share link.
            - value: 2
              name: ''
              description: User group (membership).)
            - value: 3
              name: ''
              description: Additional storage packs.
            - value: 4
              name: ''
              description: Points.
          description: Type of the product.
        ticket:
          type: string
          format: uuid
          examples:
            - d6695b49-1eca-4975-813f-0dafd90c1705
          description: >-
            The access ticket for paid share. Only presented when an anonymous
            user purshaed a paid share link. It can be used in
            `X-Cr-Purchase-Ticket` to proof purchasing and access file related
            APIs.
          nullable: true
      required:
        - id
        - trade_no
        - name
        - price_one_unit
        - created_at
        - updated_at
        - product_type
        - status
        - qyt
      x-apifox-orders:
        - id
        - trade_no
        - name
        - status
        - qyt
        - price_unit
        - price_id
        - price_mark
        - price_one_unit
        - created_at
        - updated_at
        - product_type
        - ticket
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
