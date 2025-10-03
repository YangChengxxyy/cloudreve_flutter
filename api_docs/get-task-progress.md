# Get task progress

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /workflow/progress/{id}:
    get:
      summary: Get task progress
      deprecated: false
      description: >-
        Get realtime progress of the given task. Note that not all phases and
        all task types support getting progress. Empty response will be returned
        if there's no available progress info.


        The response is a map between progress type and the actual progress.
        Common progress types are:



        | Progress Type | Description |

        | --- | --- |

        | `upload_single_<index>` | Uploaded/Total bytes of a single uplaod
        thread. |

        |`upload_count`|Count of processed/total files.|

        |`upload`| Uploaded/Total bytes of all files to be processed in this
        step.|

        |`imported`| Imported/Total files.|

        |`indexed`| Used in importing file tasks, indicating indexed files.|


        Only tasks owned by current authenticated user is available. For admin
        users, all tasks are available in this method.
      tags:
        - Workflow
        - 'Auth: JWT Required'
      parameters:
        - name: id
          in: path
          description: ID of the task.
          required: true
          example: mA7mF4
          schema:
            type: string
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JV4ACQ83S08VK91AX1W786K3: &ref_2
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      correlation_id: null
                      aggregated_error: null
                      error: null
                      data:
                        type: object
                        properties: {}
                        x-apifox-orders: &ref_0 []
                        description: Map of progress type and the progress content.
                        additionalProperties: &ref_1
                          $ref: '#/components/schemas/Progress'
                    required:
                      - data
                x-apifox-orders:
                  - 01JV4ACQ83S08VK91AX1W786K3
                properties:
                  data:
                    type: object
                    properties: {}
                    x-apifox-orders: *ref_0
                    description: Map of progress type and the progress content.
                    additionalProperties: *ref_1
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
                required:
                  - data
                  - code
                x-apifox-ignore-properties:
                  - data
                  - code
                  - msg
              example:
                data:
                  upload_count:
                    total: 34
                    current: 25
                  upload:
                    total: 12836332
                    current: 16889
                code: 0
                msg: ''
          headers: {}
          x-apifox-name: Success
        x-200:No available progress:
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JV4ASF0VM55V19JZ1KFFZ9VQ: *ref_2
                x-apifox-orders:
                  - 01JV4ASF0VM55V19JZ1KFFZ9VQ
                properties:
                  data:
                    type:
                      - string
                      - integer
                      - boolean
                      - array
                      - object
                      - number
                      - 'null'
                    description: Response content
                    nullable: true
                    oneOf:
                      - type: string
                      - type: integer
                      - type: boolean
                      - type: array
                      - type: object
                      - type: number
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
                required:
                  - data
                  - code
                x-apifox-ignore-properties:
                  - data
                  - code
                  - msg
              example:
                code: 0
                msg: ''
          headers: {}
          x-apifox-name: No available progress
      security: []
      x-apifox-folder: Workflow
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-295218550-run
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
    Progress:
      type: object
      properties:
        total:
          type: integer
          description: >-
            Total items to process. Could be file size in bytes, or item counts
            depending on the progress type.
        current:
          type: integer
          description: >-
            Currently procressed items. Could be file size in bytes, or item
            counts depending on the progress type.
        identifier:
          type: string
          description: >-
            Identifier of this progress (if applied). For batched file tasks,
            this could be used to differentiate different files processed in
            parallel.
      x-apifox-orders:
        - total
        - current
        - identifier
      required:
        - total
        - current
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
  securitySchemes: {}
servers: []
security: []

```
