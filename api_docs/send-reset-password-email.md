# Send reset password email

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /user/reset:
    post:
      summary: Send reset password email
      deprecated: false
      description: Send a email for an existing account to reset the password.
      tags:
        - User
        - 'Auth: None'
      parameters: []
      requestBody:
        content:
          application/json:
            schema:
              type: object
              properties:
                captcha:
                  type: string
                  description: >-
                    User input value of the graphical CAPTCHA. Required if
                    graphic CAPTCHA enabled for current action.
                  examples:
                    - z3ds
                  nullable: true
                ticket:
                  type: string
                  description: >-
                    Ticket/Token of the CAPTCHA. Required if CAPTCHA is enabled
                    for current action. Can be obtained from [Get
                    CAPTCHA](https://cloudrevev4.apifox.cn/get-captcha-289470260e0.md).
                  examples:
                    - 4qXv7KmbYajJ0yFDKcmJ
                  nullable: true
                email:
                  type: string
                  format: email
                  examples:
                    - example@cloudreve.org
                  description: Account ematil.
              x-apifox-orders:
                - 01JSRMB066XGZ7BJGMHAFHBPZM
                - email
              required:
                - email
              x-apifox-refs:
                01JSRMB066XGZ7BJGMHAFHBPZM:
                  $ref: '#/components/schemas/CaptchaFields'
              x-apifox-ignore-properties:
                - captcha
                - ticket
            examples: {}
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JSRMC6XNKHCPP0026743XRX8: &ref_0
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data: null
                x-apifox-orders:
                  - 01JSRMC6XNKHCPP0026743XRX8
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
                  - correlation_id
              example:
                code: 0
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: User
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-289518969-run
components:
  schemas:
    CaptchaFields:
      type: object
      properties:
        captcha:
          type: string
          description: >-
            User input value of the graphical CAPTCHA. Required if graphic
            CAPTCHA enabled for current action.
          examples:
            - z3ds
          nullable: true
        ticket:
          type: string
          description: >-
            Ticket/Token of the CAPTCHA. Required if CAPTCHA is enabled for
            current action. Can be obtained from [Get
            CAPTCHA](https://cloudrevev4.apifox.cn/get-captcha-289470260e0.md).
          examples:
            - 4qXv7KmbYajJ0yFDKcmJ
          nullable: true
      x-apifox-orders:
        - captcha
        - ticket
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
