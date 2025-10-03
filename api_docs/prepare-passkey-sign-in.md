# Prepare Passkey sign-in

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /session/authn:
    put:
      summary: Prepare Passkey sign-in
      deprecated: false
      description: Prepare a Passkey login session.
      tags:
        - Session/Passkey
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
                  01JSRJVY745GEA1BF3NS8VVH50: &ref_3
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data:
                        type: object
                        properties:
                          session_id: &ref_0
                            type: string
                            format: uuid
                            description: ID of the login session.
                          options:
                            type: object
                            properties:
                              01JSRK1R5F4NZ2CHDTQ44G3C82:
                                type: string
                            x-apifox-orders: &ref_1
                              - 01JSRK1R5F4NZ2CHDTQ44G3C82
                            description: >-
                              A `CredentialAssertion` object that can be used by
                              browser to initiate a authentification.
                            required:
                              - 01JSRK1R5F4NZ2CHDTQ44G3C82
                            additionalProperties: true
                        x-apifox-orders: &ref_2
                          - session_id
                          - options
                        description: Response content
                        required:
                          - session_id
                          - options
                    required:
                      - data
                x-apifox-orders:
                  - 01JSRJVY745GEA1BF3NS8VVH50
                properties:
                  data:
                    type: object
                    properties:
                      session_id: *ref_0
                      options:
                        type: object
                        properties: {}
                        x-apifox-orders: *ref_1
                        description: >-
                          A `CredentialAssertion` object that can be used by
                          browser to initiate a authentification.
                        required:
                          - 01JSRK1R5F4NZ2CHDTQ44G3C82
                        additionalProperties: true
                        x-apifox-ignore-properties: []
                    x-apifox-orders: *ref_2
                    description: Response content
                    required:
                      - session_id
                      - options
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
                  options:
                    publicKey:
                      challenge: FVcvX-tYVZYL24gsHj7mryaljQjcNeT8oVIK-vmLJZI
                      timeout: 300000
                      rpId: 127.0.0.1
                  session_id: 47c10dd3-7e10-4950-95d5-483dbc9508e6
                code: 0
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: Session/Passkey
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-289514622-run
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
