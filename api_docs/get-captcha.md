# Get CAPTCHA

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /site/captcha:
    get:
      summary: Get CAPTCHA
      deprecated: false
      description: Request a CAPTCHA image and a ticket.
      tags:
        - Site
        - 'Auth: None'
      parameters: []
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JSR1ZEZWHSBW3PNZCXG627ZR: &ref_3
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      data:
                        type: object
                        properties:
                          image: &ref_0
                            type: string
                            description: Base64 encoded CAPTCHA image.
                          ticket: &ref_1
                            type: string
                            description: >-
                              Ticket of this CAPTCHA, need to be included in
                              following request that requires CAPTCHA
                              verification.
                        x-apifox-orders: &ref_2
                          - image
                          - ticket
                        description: >-
                          The version of the Cloudreve instance. For pro
                          edition, a `-pro` suffix will be added.
                        required:
                          - image
                          - ticket
                      aggregated_error: null
                    required:
                      - data
                x-apifox-orders:
                  - 01JSR1ZEZWHSBW3PNZCXG627ZR
                properties:
                  data:
                    type: object
                    properties:
                      image: *ref_0
                      ticket: *ref_1
                    x-apifox-orders: *ref_2
                    description: >-
                      The version of the Cloudreve instance. For pro edition, a
                      `-pro` suffix will be added.
                    required:
                      - image
                      - ticket
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
                  image: >-
                    data:image/png;base64,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
                  ticket: HymrzJDtehnoon7ZZVau
                msg: ''
          headers: {}
          x-apifox-name: OK
      security: []
      x-apifox-folder: Site
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-289470260-run
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
