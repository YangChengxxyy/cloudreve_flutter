# Finish passkey registration

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /user/authn:
    post:
      summary: Finish passkey registration
      deprecated: false
      description: ''
      tags:
        - User/Passkey
        - 'Auth: JWT Required'
      parameters: []
      requestBody:
        content:
          application/json:
            schema:
              type: object
              properties:
                response:
                  type: string
                  description: >-
                    JSON encoded CredentialCreationResponse with additional
                    fields, see example for details.
                u:
                  type: string
                  description: |-
                    Name of the passkey. Available placeholders:

                    - `{os}`: OS name parsed from `ua`;
                    - `{browser}`: Browser name parsed from `ua`;
                ua:
                  type: string
                  description: Client user agent.
              x-apifox-orders:
                - response
                - u
                - ua
              required:
                - response
                - ua
                - u
              x-apifox-ignore-properties: []
            example:
              response: >-
                {"id":"7urNE_WTQSGqA06D0w-1Xw","type":"public-key","rawId":"7urNE_WTQSGqA06D0w-1Xw","response":{"attestationObject":"o2NmbXRkbm9uZWdhdHRTdG10oGhhdXRoRGF0YViUSZYN5YgOjGh0NBcPZHZgW4_krrmihjLHmVzzuoMdl2NdAAAAANVIgm55tNtAo9gREW9-g0kAEO7qzRP1k0EhqgNOg9MPtV-lAQIDJiABIVggg1lGbgriP72Ro5GpDhgyH_FwmxDFbg_9IAvb1kKqtuUiWCA-wxwgCMp5OVE0s0E8U7ZR-v9HcVr88onxRbauZDUD9A","clientDataJSON":"eyJ0eXBlIjoid2ViYXV0aG4uY3JlYXRlIiwiY2hhbGxlbmdlIjoiZnlFQ2I2aDh0bXZRcnZUV1p2Y05RZ0VUb08zMExqRHRmNzIxeUlHVTA0RSIsIm9yaWdpbiI6Imh0dHA6Ly9sb2NhbGhvc3Q6NTE3MyIsImNyb3NzT3JpZ2luIjpmYWxzZX0"}}
              name: '{browser} on {os}'
              ua: >-
                Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)
                AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0
                Safari/537.36
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JXKJYFSYFK9Q3WSHFEHPA804: &ref_1
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data: &ref_0
                        description: >-
                          Response content. In some error type, e.g. lock
                          conflicting errors, this field wil present details of
                          the error, e.g. who is locking the current file.
                        $ref: '#/components/schemas/Passkey'
                    required:
                      - data
                x-apifox-orders:
                  - 01JXKJYFSYFK9Q3WSHFEHPA804
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
                data:
                  id: 7urNE/WTQSGqA06D0w+1Xw==
                  name: Chrome on Mac OS X
                  created_at: '2025-06-13T10:43:09.929001+08:00'
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: User/Passkey
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-308306602-run
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
    Passkey:
      type: object
      properties:
        id:
          type: string
          description: ID of the passkey.
          examples:
            - 7urNE/WTQSGqA06D0w+1Xw==
        name:
          type: string
          examples:
            - Chrome on Mac OS X
          description: Name of the passkey platform.
        used_at:
          type: string
          description: Datetime when the passkey is lastly used.
          format: date-time
          examples:
            - '2025-06-13T10:43:09.929001+08:00'
          nullable: true
        created_at:
          type: string
          format: date-time
          examples:
            - '2025-06-13T10:43:09.929001+08:00'
          description: Datetime when the passkey is created.
      x-apifox-orders:
        - id
        - name
        - used_at
        - created_at
      required:
        - id
        - name
        - created_at
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
  securitySchemes: {}
servers: []
security: []

```
