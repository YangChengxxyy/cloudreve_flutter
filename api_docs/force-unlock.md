# Force unlock

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /file/lock:
    delete:
      summary: Force unlock
      deprecated: false
      description: >-
        If a file is locked by other user/application, file mutation might fail
        with errors like below:


        ```json

        {
            "code": 40073,
            "data": [
                {
                    "path": "cloudreve://my/newdfox.docx",
                    "token": "cool-lock0a4b4f68",
                    "owner": {
                        "owner": "bnUn",
                        "application": {
                            "type": "viewer",
                            "viewer_id": "af01b85b-f57d-46d2-8ad6-1d9b96548e78"
                        }
                    },
                    "type": 0
                }
            ],
            "msg": "Lock conflict",
            "error": "conflict with locked resource: \"cloudreve://my/newdfox.docx\"",
            "correlation_id": "64210cda-5bd1-4fe1-9102-77b86f768395"
        }

        ```

        The lock token `cool-lock0a4b4f68` in above example is only visable to
        file owners. This method can be used to force unlock files if the file
        owners wish to do so.
      tags:
        - File
        - 'Auth: None'
      parameters: []
      requestBody:
        content:
          application/json:
            schema:
              type: object
              properties:
                tokens:
                  type: array
                  items:
                    type: string
                  description: >-
                    List of lock tokens, can be retrieved in lock conflict error
                    response.
              x-apifox-orders:
                - tokens
              required:
                - tokens
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
                  01JXC0DR2YC0NS7E483RGXQR2P: &ref_0
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      data: null
                x-apifox-orders:
                  - 01JXC0DR2YC0NS7E483RGXQR2P
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
                  aggregated_error:
                    type: object
                    properties: {}
                    x-apifox-orders:
                      - 01JSRF01R97ZK0FE2NPYS810YS
                    description: >-
                      Map of multiple error in batch request. The key is the
                      failed resource ID, it could be a file URI or a resource
                      ID, the value is a `Response`.
                    additionalProperties: *ref_0
                    required:
                      - 01JSRF01R97ZK0FE2NPYS810YS
                    x-apifox-ignore-properties: []
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
                  - aggregated_error
                  - correlation_id
              example:
                code: 0
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: File
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-306639058-run
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
