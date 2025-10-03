# Delete upload session

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /file/upload:
    delete:
      summary: Delete upload session
      deprecated: false
      description: >-
        Delete an upload session. Client should send this request if:


        * User canceled an upload after uplaod session created.

        * Non-retryable error occurs.

        * Client need to delete the upload session, but it's undetermined if the
        session is already deleted.
      tags:
        - File/Upload
        - 'Auth: JWT Optional'
      parameters:
        - name: X-Cr-Purchase-Ticket
          in: header
          description: >-
            Can be used to authenticate to paid share links with a anonymous
            identity. The ticket value can be obtained after an anonymous user
            purchase a paid share link.
          required: false
          example: 1f63aa26-edc0-40ce-950a-cb4d4323158e
          schema:
            type: string
      requestBody:
        content:
          application/json:
            schema:
              type: object
              properties:
                id:
                  type: string
                  description: ID of the upload session.
                  examples:
                    - 9897ebae-7b73-4169-aabc-6396f470e4bb
                uri:
                  type: string
                  examples:
                    - cloudreve://my/Inspirations/file.zip
                  description: >-
                    [URI](https://docs.cloudreve.org/api/file-uri) of the target
                    placeholder file, it should have been created during
                    creating upload session.
              x-apifox-orders:
                - id
                - uri
              required:
                - id
                - uri
              x-apifox-ignore-properties: []
            example:
              id: 9897ebae-7b73-4169-aabc-6396f470e4bb
              uri: cloudreve://my/Inspirations/file.zip
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JXCA10VG4B57GC47N2M8TP2Y: &ref_0
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      data: null
                      aggregated_error: null
                x-apifox-orders:
                  - 01JXCA10VG4B57GC47N2M8TP2Y
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
      x-apifox-folder: File/Upload
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-306756902-run
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
