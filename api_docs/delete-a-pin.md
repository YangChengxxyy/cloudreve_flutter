# Delete a pin

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /file/pin:
    delete:
      summary: Delete a pin
      deprecated: false
      description: Remove a pinned URI from user's sidebar.
      tags:
        - File/Pin
        - 'Auth: JWT Required'
      parameters: []
      requestBody:
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/PinFileService'
            example:
              uri: cloudreve://my/Inspirations?name=jpg&case_folding=
              name: My images
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JXCA9VGF8VTQHG33XNK0SS7D: &ref_0
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data: null
                x-apifox-orders:
                  - 01JXCA9VGF8VTQHG33XNK0SS7D
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
      x-apifox-folder: File/Pin
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-306763333-run
components:
  schemas:
    PinFileService:
      type: object
      properties:
        uri:
          type: string
          description: >-
            [URI](https://docs.cloudreve.org/api/file-uri) of the target folder
            or search view.
          examples:
            - cloudreve://my/Inspirations?name=jpg&case_folding=
        name:
          type: string
          description: >-
            Option display name of the sidebar item. Default name will be used
            if this value is null.
          examples:
            - My images
          nullable: true
      x-apifox-orders:
        - uri
        - name
      required:
        - uri
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
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
