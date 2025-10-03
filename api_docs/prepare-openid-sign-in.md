# Prepare OpenID sign-in

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /session/openid:
    put:
      summary: Prepare OpenID sign-in
      deprecated: false
      description: >-
        Preapre a social connector sign in, can be used to sign in Cloudreve
        account, or link existing account with a social connector account.

        * For signing in with social connector, authorization is not required.

        * For account linking, authorization is required for a valid logged-in
        user.
      tags:
        - Session/OpenID
        - 'Auth: JWT Optional'
        - Pro
      parameters: []
      requestBody:
        content:
          application/json:
            schema:
              type: object
              properties:
                hint:
                  type: string
                  description: >-
                    Email of preferred 3rd party account. Only Logto supports
                    it.
                  format: email
                  nullable: true
                linking:
                  type: boolean
                  description: >-
                    Whether this sign in is for linking existing account in
                    Cloudreve. If `true`, a valid session is required.
                  nullable: true
                provider:
                  type: integer
                  description: OpenID provider type ID.
                  enum:
                    - 0
                    - 1
                    - 2
                  x-apifox-enum:
                    - value: 0
                      name: ''
                      description: Logto
                    - value: 1
                      name: ''
                      description: Tencent QQ
                    - value: 2
                      name: ''
                      description: OIDC
              x-apifox-orders:
                - hint
                - linking
                - provider
              x-apifox-ignore-properties: []
            examples: {}
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JSRH1HR0XY46DG8DQVB6CY1Z: &ref_1
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data: &ref_0
                        type: string
                        description: Redirect URL for the 3rd party sign in.
                        format: uri
                    required:
                      - data
                x-apifox-orders:
                  - 01JSRH1HR0XY46DG8DQVB6CY1Z
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
                data: >-
                  https://kqyhaj.logto.app/oidc/auth?client_id=negu9t0i5imx005vfd9hs&code_challenge=tWQ6Q2M4Ejkt9gwURhyBVxrtT7gfnbxe59ia-J8NuuE&code_challenge_method=S256&prompt=consent&redirect_uri=http://127.0.0.1:5212/callback/openid/0&response_type=code&scope=openid
                  offline_access profile
                  email&state=fbc710af-6a46-49e9-9a0c-59123163f941
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: Session/OpenID
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-289505034-run
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
  securitySchemes: {}
servers: []
security: []

```
