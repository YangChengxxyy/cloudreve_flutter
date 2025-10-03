# Unlink OpenID

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /session/openid/{provider_id}:
    delete:
      summary: Unlink OpenID
      deprecated: false
      description: Unlink an OpenID account from a Cloudreve account.
      tags:
        - Session/OpenID
        - 'Auth: JWT Required'
        - Pro
      parameters:
        - name: provider_id
          in: path
          description: ''
          required: true
          example: 0
          schema:
            type: integer
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
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JSRJ2S9NE69GJ3QE6YCG9CGN: &ref_0
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data: null
                    required:
                      - data
                x-apifox-orders:
                  - 01JSRJ2S9NE69GJ3QE6YCG9CGN
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
      x-apifox-folder: Session/OpenID
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-289512330-run
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
