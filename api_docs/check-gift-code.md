# Check gift code

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /vas/giftcode/{code}:
    get:
      summary: Check gift code
      deprecated: false
      description: Get details of given gift code, but it does not process redemption.
      tags:
        - VAS/GiftCode
        - 'Auth: JWT Required'
        - Pro
      parameters:
        - name: code
          in: path
          description: Gift code.
          required: true
          example: d6695b49-1eca-4975-813f-0dafd90c1705
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
                  01JXHCX153CMHMN36T4VHCC7A4: &ref_4
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data:
                        type: object
                        properties:
                          name: &ref_0
                            type: string
                            description: Name of the product.
                            examples:
                              - Points
                          qyt: &ref_1
                            type: number
                            minimum: 1
                            examples:
                              - 100
                            description: Quantity of the product included in the gift code.
                          duration: &ref_2
                            type: integer
                            examples:
                              - 864000
                            description: >-
                              Duration of the group or storage pack product in
                              one `qyt`.
                            nullable: true
                        x-apifox-orders: &ref_3
                          - name
                          - qyt
                          - duration
                        description: >-
                          Response content. In some error type, e.g. lock
                          conflicting errors, this field wil present details of
                          the error, e.g. who is locking the current file.
                        required:
                          - name
                          - qyt
                x-apifox-orders:
                  - 01JXHCX153CMHMN36T4VHCC7A4
                properties:
                  data:
                    type: object
                    properties:
                      name: *ref_0
                      qyt: *ref_1
                      duration: *ref_2
                    x-apifox-orders: *ref_3
                    description: >-
                      Response content. In some error type, e.g. lock
                      conflicting errors, this field wil present details of the
                      error, e.g. who is locking the current file.
                    required:
                      - name
                      - qyt
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
              example:
                code: 0
                data:
                  name: Points
                  qyt: 1
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: VAS/GiftCode
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-307898851-run
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
  securitySchemes: {}
servers: []
security: []

```
