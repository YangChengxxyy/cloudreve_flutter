# Sign out

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /session/token:
    delete:
      summary: Sign out
      deprecated: false
      description: >-
        Sign out current session and revoke the refresh token. All refresh
        tokens issued from the root token will be revoked. For SSO sign in
        sessions, this method also give the redirect URL from SSO side to sign
        out its session.
      tags:
        - Session/Token
        - 'Auth: None'
      parameters: []
      requestBody:
        content:
          application/json:
            schema:
              type: object
              properties:
                refresh_token:
                  type: string
                  description: Refresh token.
                  examples:
                    - >-
                      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsInN1YiI6ImxwdWEiLCJleHAiOjE3NjEyMDM5NzgsIm5iZiI6MTc0NTY1MTk3OCwic3RhdGVfaGFzaCI6Ikk1OCtSbmsrTHVpTkxBbjBqek9KNG45OUorV3hqL0pzbjJoRVYrUXBhelE9In0.Q2s75zxPVA3bzZyIIBau3TBvqSxIdzbiEmK1zCd-_zk
              x-apifox-orders:
                - refresh_token
              required:
                - refresh_token
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
                  01JW02KQH32HREJFS2ETXYTQWJ: &ref_1
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data: &ref_0
                        type: string
                        description: >-
                          Can be a string value or null. If it's string, the
                          value is the redirect URL to sign out 3rd SSO session.
                          Client side should redirect user to this URL.
                        nullable: true
                    required:
                      - data
                x-apifox-orders:
                  - 01JW02KQH32HREJFS2ETXYTQWJ
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
                data: https://kqyhaj.logto.app/oidc/session/end
                code: 0
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: Session/Token
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-300210073-run
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
