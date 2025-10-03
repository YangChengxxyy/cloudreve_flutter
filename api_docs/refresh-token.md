# Refresh Token

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /session/token/refresh:
    post:
      summary: Refresh Token
      deprecated: false
      description: Refresh access token with a valid refresh token.
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
                  examples:
                    - >-
                      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsInN1YiI6ImxwdWEiLCJleHAiOjE3NjEyMDM5NzgsIm5iZiI6MTc0NTY1MTk3OCwic3RhdGVfaGFzaCI6Ikk1OCtSbmsrTHVpTkxBbjBqek9KNG45OUorV3hqL0pzbjJoRVYrUXBhelE9In0.Q2s75zxPVA3bzZyIIBau3TBvqSxIdzbiEmK1zCd-_zk
                  description: Refresh token.
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
                  01JSRGBH4NXEGYEFMT5X3APNF1: &ref_1
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data: &ref_0
                        $ref: '#/components/schemas/Token'
                    required:
                      - data
                x-apifox-orders:
                  - 01JSRGBH4NXEGYEFMT5X3APNF1
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
                data:
                  access_token: >-
                    eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwic3ViIjoibHB1YSIsImV4cCI6MTc0NTY1NDMwOCwibmJmIjoxNzQ1NjUwNzA4fQ.n2z8AY-A9GC-CymOsLSA8ruV3vYgNJd27MXRcm4bVu8
                  access_expires: '2025-04-26T15:58:28.456762+08:00'
                  refresh_token: >-
                    eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsInN1YiI6ImxwdWEiLCJleHAiOjE3NjEyMDI3MDgsIm5iZiI6MTc0NTY1MDcwOCwic3RhdGVfaGFzaCI6Ikk1OCtSbmsrTHVpTkxBbjBqek9KNG45OUorV3hqL0pzbjJoRVYrUXBhelE9In0.KoechX6_A2NeVcfFAlHkRLk572hjPKepP0XWfbvBxZY
                  refresh_expires: '2025-10-23T14:58:28.456762+08:00'
                code: 0
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: Session/Token
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-289504601-run
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
    Token:
      type: object
      properties:
        access_token:
          type: string
          examples:
            - >-
              eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwic3ViIjoibHB1YSIsImV4cCI6MTc0NTY1NDMwOCwibmJmIjoxNzQ1NjUwNzA4fQ.n2z8AY-A9GC-CymOsLSA8ruV3vYgNJd27MXRcm4bVu8
          description: Access token that can be used to request API on user's behalf.
        access_expires:
          type: string
          format: date-time
          examples:
            - '2025-04-26T15:58:28.456762+08:00'
          description: Expiration date of the access token.
        refresh_token:
          type: string
          examples:
            - >-
              eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsInN1YiI6ImxwdWEiLCJleHAiOjE3NjEyMDI3MDgsIm5iZiI6MTc0NTY1MDcwOCwic3RhdGVfaGFzaCI6Ikk1OCtSbmsrTHVpTkxBbjBqek9KNG45OUorV3hqL0pzbjJoRVYrUXBhelE9In0.KoechX6_A2NeVcfFAlHkRLk572hjPKepP0XWfbvBxZY
          description: >-
            Refresh token that can be used to refresh a new pair of access token
            and refresh token.
        refresh_expires:
          type: string
          format: date-time
          title: ''
          examples:
            - '2025-10-23T14:58:28.456762+08:00'
          description: Expiration date of the refresh token.
      x-apifox-orders:
        - access_token
        - access_expires
        - refresh_token
        - refresh_expires
      required:
        - access_token
        - refresh_expires
        - refresh_token
        - access_expires
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
  securitySchemes: {}
servers: []
security: []

```
