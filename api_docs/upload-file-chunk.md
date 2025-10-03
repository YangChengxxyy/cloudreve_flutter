# Upload file chunk

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /file/upload/{sessionId}/{index}:
    post:
      summary: Upload file chunk
      deprecated: false
      description: >-
        Upload one chunk to Cloudreve. This method only applies to local storage
        policy, or storage policies with upload relay enabled.


        * If mulitpart upload is disabled, all file data should be send in one
        request with `index` set to `0`;

        * Chunks must be uploaded in order, starting from index `0`;

        * `Content-Length` header is required.
      tags:
        - File/Upload
        - 'Auth: JWT Optional'
      parameters:
        - name: sessionId
          in: path
          description: >-
            ID of the upload session, can be get from [Create upload
            session](./create-upload-session-306671611e0)
          required: true
          example: 9897ebae-7b73-4169-aabc-6396f470e4bb
          schema:
            type: string
            format: uuid
        - name: index
          in: path
          description: Index of the chunk, starting from `0`.
          required: true
          example: 1
          schema:
            type: integer
            minimum: 0
        - name: Content-Length
          in: header
          description: >-
            Size of current chunk. Must match with the `chunk_size` in the
            upload session, except the last chunk.
          required: true
          example: 553456
          schema:
            type: integer
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
          application/octet-stream:
            schema:
              type: string
              format: binary
            examples: {}
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JXC7H1Z81DPWFE8JSTGQ3QQX: &ref_0
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data: null
                x-apifox-orders:
                  - 01JXC7H1Z81DPWFE8JSTGQ3QQX
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
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-306698012-run
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
