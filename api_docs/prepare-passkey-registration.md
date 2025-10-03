# Prepare passkey registration

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /user/authn:
    put:
      summary: Prepare passkey registration
      deprecated: false
      description: Prepare to register a new passkey.
      tags:
        - User/Passkey
        - 'Auth: JWT Required'
      parameters: []
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JXKJFJPC70V4NFXHYEJ0VSBS: &ref_2
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data:
                        type: object
                        properties:
                          publicKey:
                            type: object
                            properties: {}
                            x-apifox-orders: &ref_0 []
                            description: >-
                              A
                              [PublicKeyCredentialCreationOptions](https://www.w3.org/TR/webauthn/#dictionary-makecredentialoptions)
                              object that can be used to invoke passkey
                              registration from browser.
                        x-apifox-orders: &ref_1
                          - publicKey
                        description: >-
                          Response content. In some error type, e.g. lock
                          conflicting errors, this field wil present details of
                          the error, e.g. who is locking the current file.
                        required:
                          - publicKey
                x-apifox-orders:
                  - 01JXKJFJPC70V4NFXHYEJ0VSBS
                properties:
                  data:
                    type: object
                    properties:
                      publicKey:
                        type: object
                        properties: {}
                        x-apifox-orders: *ref_0
                        description: >-
                          A
                          [PublicKeyCredentialCreationOptions](https://www.w3.org/TR/webauthn/#dictionary-makecredentialoptions)
                          object that can be used to invoke passkey registration
                          from browser.
                        x-apifox-ignore-properties: []
                    x-apifox-orders: *ref_1
                    description: >-
                      Response content. In some error type, e.g. lock
                      conflicting errors, this field wil present details of the
                      error, e.g. who is locking the current file.
                    required:
                      - publicKey
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
                  publicKey:
                    rp:
                      name: Cloudreve
                      id: localhost
                    user:
                      name: luke@skywalker.com
                      displayName: Luke Skywalker
                      id: Ym5Vbg
                    challenge: TSMn9HYi5vCJasIbJYRwEgf4nHVzHU_ldZUzeySb5Uk
                    pubKeyCredParams:
                      - type: public-key
                        alg: -7
                      - type: public-key
                        alg: -35
                      - type: public-key
                        alg: -36
                      - type: public-key
                        alg: -257
                      - type: public-key
                        alg: -258
                      - type: public-key
                        alg: -259
                      - type: public-key
                        alg: -37
                      - type: public-key
                        alg: -38
                      - type: public-key
                        alg: -39
                      - type: public-key
                        alg: -8
                    timeout: 300000
                    excludeCredentials:
                      - type: public-key
                        id: '-l161nXQn7juNPvQ8dlkbQ'
                    authenticatorSelection:
                      requireResidentKey: true
                      userVerification: preferred
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: User/Passkey
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-308300603-run
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
          additionalProperties: *ref_2
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
