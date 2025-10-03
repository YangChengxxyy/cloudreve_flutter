# Prepare login

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /session/prepare:
    get:
      summary: Prepare login
      deprecated: false
      description: >-
        Query if a given is existed, and all possible login method for it. This
        method is not required to perform a sign in, it just provide more
        context for frontent UI.
      tags:
        - Session
        - 'Auth: None'
      parameters:
        - name: email
          in: query
          description: Account email.
          required: true
          example: example@cloudreve.org
          schema:
            type: string
            format: email
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JSRJGAQXAY42HK9BZQTCNCKT: &ref_5
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data:
                        type: object
                        properties:
                          webauthn_enabled: &ref_0
                            type: boolean
                            description: >-
                              Whether this account can be logged in with
                              Passkeys.
                          password_enabled: &ref_2
                            type: boolean
                            description: >-
                              Whether this account can be logged in with
                              password.
                          qq_enabled: &ref_3
                            type: boolean
                            description: >-
                              Whether this account can be logged in with Tencent
                              QQ.
                          sso_enabled: &ref_1
                            type: boolean
                            description: Whether this account can be logged in with Logto.
                        x-apifox-orders: &ref_4
                          - webauthn_enabled
                          - sso_enabled
                          - password_enabled
                          - qq_enabled
                        description: Response content
                        required:
                          - password_enabled
                    required:
                      - data
                x-apifox-orders:
                  - 01JSRJGAQXAY42HK9BZQTCNCKT
                properties:
                  data:
                    type: object
                    properties:
                      webauthn_enabled: *ref_0
                      sso_enabled: *ref_1
                      password_enabled: *ref_2
                      qq_enabled: *ref_3
                    x-apifox-orders: *ref_4
                    description: Response content
                    required:
                      - password_enabled
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
                data:
                  webauthn_enabled: true
                  sso_enabled: false
                  password_enabled: true
                  qq_enabled: true
                code: 0
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: Session
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-289512825-run
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
          additionalProperties: *ref_5
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
