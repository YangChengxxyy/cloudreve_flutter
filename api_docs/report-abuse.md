# Report abuse

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /site/abuse:
    post:
      summary: Report abuse
      deprecated: false
      description: Report abuse on share links or users.
      tags:
        - Site
        - 'Auth: JWT Optional'
        - Pro
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
                file_uri:
                  type: string
                  description: >-
                    If reporting target is a share link, this should be the
                    [URI](https://docs.cloudreve.org/api/file-uri) of the folder
                    in which user submitted the report.
                  examples:
                    - cloudreve://EBuq:745@share
                  nullable: true
                category:
                  type: number
                  enum:
                    - 0
                    - 1
                    - 2
                    - 3
                  x-apifox-enum:
                    - value: 0
                      name: Copyright infringement
                      description: ''
                    - value: 1
                      name: Harmful content
                      description: ''
                    - value: 2
                      name: Spam
                      description: ''
                    - value: 3
                      name: Other
                      description: ''
                  description: Category of the report.
                description:
                  type: string
                  maxLength: 512
                  description: Additional descriptions.
                  nullable: true
                share_id:
                  type: string
                  description: >-
                    ID of the reporting share link. Must be omitted if `user_id`
                    is set.
                  examples:
                    - EBuq
                  nullable: true
                user_id:
                  type: string
                  description: >-
                    ID of the reporting user. Must be omitted if `share_id` is
                    set.
                  examples:
                    - lpua
                  nullable: true
              x-apifox-orders:
                - 01K2EJE7AHS07W2B317F06YBMZ
                - file_uri
                - category
                - description
                - share_id
                - user_id
              x-apifox-refs:
                01K2EJE7AHS07W2B317F06YBMZ:
                  $ref: '#/components/schemas/CaptchaFields'
              required:
                - category
              x-apifox-ignore-properties:
                - captcha
                - ticket
            examples:
              '1':
                value:
                  file_uri: cloudreve://EBuq:745@share
                  share_id: EBuq
                  category: 0
                  description: ''
                summary: Report a share link
              '2':
                value:
                  user_id: lpua
                  category: 0
                  description: This user sucks.
                summary: Report a user
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01K2EJR7ADRAF6NCVSZHQ1PJMM: &ref_0
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data: null
                x-apifox-orders:
                  - 01K2EJR7ADRAF6NCVSZHQ1PJMM
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
      x-apifox-folder: Site
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-334845667-run
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
