# Create a payment

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /vas/payment:
    put:
      summary: Create a payment
      deprecated: false
      description: Create a payment for given product.
      tags:
        - VAS/Payment
        - 'Auth: JWT Optional'
        - Pro
      parameters: []
      requestBody:
        content:
          application/json:
            schema:
              type: object
              properties:
                product:
                  type: object
                  properties:
                    type:
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
                    share_link_id:
                      type: string
                      description: >-
                        ID of the paid share link. Only required if `type` is
                        `3`.
                      examples:
                        - LJ6cM
                      nullable: true
                    sku_id:
                      type: string
                      description: >-
                        SKU ID for user group or storage packs. Only required if
                        `type` is `2` or `3`.
                      format: uuid
                      examples:
                        - 8ff2cceb-b4e6-4fa8-a934-04900a2e8699
                      nullable: true
                  x-apifox-orders:
                    - type
                    - share_link_id
                    - sku_id
                  required:
                    - type
                  description: Target product.
                  x-apifox-ignore-properties: []
                quantity:
                  type: integer
                  minimum: 1
                  description: >-
                    Quantity of the product. For points product, this is the
                    count of purchasing points.
                provider_id:
                  type: string
                  description: >-
                    ID of the payment provider. Empty value means paying using
                    points.


                    List of available payment providers can be get from
                    `payment` in the response of [Get site
                    settings](./get-site-settings-289489676e0) under `vas`
                    section.
                  format: uuid
                  examples:
                    - a840b559-001c-484f-bf4c-6c1f51edf041
                  nullable: true
                email:
                  type: string
                  description: >-
                    Email of the payment owner to send receipt. Only required
                    when `Authorization` header is missing.
                language:
                  type: string
                  examples:
                    - en-US
                  description: >-
                    Language code of the receipt email. Only appliable when
                    `Authorization` header is missing.
              x-apifox-orders:
                - product
                - quantity
                - provider_id
                - email
                - language
              required:
                - product
                - quantity
              x-apifox-ignore-properties: []
            example:
              product:
                type: 3
                sku_id: ea602ab6-bd1e-40c3-b674-bef18fda7fa9
              quantity: 1
              email: ''
              provider_id: 8ff2cceb-b4e6-4fa8-a934-04900a2e8699
              language: zh-CN
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JXHC9FY39913AA7PAEA5C23X: &ref_6
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data:
                        type: object
                        properties:
                          payment: &ref_0
                            $ref: '#/components/schemas/Payment'
                            description: Details of the payment.
                          request:
                            type: object
                            properties:
                              payment_needed: &ref_1
                                type: boolean
                                description: >-
                                  Whether following payment is needed. For
                                  payments using points, this is `false`.
                                nullable: true
                              url: &ref_2
                                type: string
                                description: URL to the payment page.
                                nullable: true
                              qr_code_preferred: &ref_3
                                type: boolean
                                description: >-
                                  If `true`, a QR Code is preferred to be shown
                                  to users. The content of the QR Code is `url`.
                            x-apifox-orders: &ref_4
                              - payment_needed
                              - url
                              - qr_code_preferred
                            description: Additional info to initiate a payment.
                        x-apifox-orders: &ref_5
                          - payment
                          - request
                        description: >-
                          Response content. In some error type, e.g. lock
                          conflicting errors, this field wil present details of
                          the error, e.g. who is locking the current file.
                        required:
                          - payment
                          - request
                x-apifox-orders:
                  - 01JXHC9FY39913AA7PAEA5C23X
                properties:
                  data:
                    type: object
                    properties:
                      payment: *ref_0
                      request:
                        type: object
                        properties:
                          payment_needed: *ref_1
                          url: *ref_2
                          qr_code_preferred: *ref_3
                        x-apifox-orders: *ref_4
                        description: Additional info to initiate a payment.
                        x-apifox-ignore-properties: []
                    x-apifox-orders: *ref_5
                    description: >-
                      Response content. In some error type, e.g. lock
                      conflicting errors, this field wil present details of the
                      error, e.g. who is locking the current file.
                    required:
                      - payment
                      - request
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
                  - code
                x-apifox-ignore-properties:
                  - data
                  - code
                  - msg
                  - error
                  - correlation_id
              examples:
                '1':
                  summary: Stripe
                  value:
                    code: 0
                    data:
                      payment:
                        id: 1XbTb
                        trade_no: '20250612141601003370839825'
                        name: '123'
                        status: created
                        qyt: 4
                        price_unit: 100
                        price_id: CNY
                        price_mark: ¥
                        price_one_unit: 100
                        created_at: '2025-06-12T14:16:02.794208+08:00'
                        updated_at: '2025-06-12T14:16:02.794208+08:00'
                        product_type: 3
                      request:
                        payment_needed: true
                        url: >-
                          https://checkout.stripe.com/c/pay/cs_test_a1FJraiSgMa6w5V3BZ39lxvgTRjhoV6KEI6jfE9Ws9GuNpI6qVjfnkuyZV#fidkdWxOYHwnPyd1blpxYHZxWjA0SnBcb0JVMGZPVHRMaDZGZk1TXzNqPXZDdU1kMVE8XXZ2TTdmSXNJd0s1aHxiMU98c31ifFRuNFRWX1VuZ2l2MlI1Zkc2NENIQHcwbTZsTEhifTNUZlczNTVhTD1LNmpcSCcpJ2N3amhWYHdzYHcnP3F3cGApJ2lkfGpwcVF8dWAnPyd2bGtiaWBabHFgaCcpJ2BrZGdpYFVpZGZgbWppYWB3dic%2FcXdwYHgl
                        qr_code_preferred: false
                    msg: ''
                '2':
                  summary: Pay with points
                  value:
                    code: 0
                    data:
                      payment:
                        id: BZySn
                        trade_no: '20250612141628004288434913'
                        name: '123'
                        status: created
                        qyt: 3
                        price_unit: 100
                        created_at: '2025-06-12T14:16:28.043417+08:00'
                        updated_at: '2025-06-12T14:16:28.043417+08:00'
                        product_type: 3
                      request:
                        payment_needed: false
                        qr_code_preferred: false
                    msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: VAS/Payment
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-307864413-run
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
          additionalProperties: *ref_6
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
  securitySchemes: {}
servers: []
security: []

```
