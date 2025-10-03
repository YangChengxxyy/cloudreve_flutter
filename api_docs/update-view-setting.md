# Update view setting

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /file/view:
    patch:
      summary: Update view setting
      deprecated: false
      description: >-
        Update view settings for given folder. Only owner of the folder can
        update view settings.
      tags:
        - File
        - 'Auth: JWT Required'
      parameters: []
      requestBody:
        content:
          application/json:
            schema:
              type: object
              properties:
                uri:
                  type: string
                  description: >-
                    [URI](https://docs.cloudreve.org/api/file-uri) of the target
                    folder.
                view:
                  description: >-
                    View settings. Set value to null to clear existing view
                    settings for target folder.
                  anyOf:
                    - description: >-
                        View settings. Set value to null to clear existing view
                        settings for target folder.
                      $ref: '#/components/schemas/ExplorerView'
                    - type: 'null'
              x-apifox-orders:
                - uri
                - view
              required:
                - uri
              x-apifox-refs: {}
              x-apifox-ignore-properties: []
            example:
              uri: cloudreve://my/Inspirations
              view:
                page_size: 50
                order: updated_at
                order_direction: desc
                view: list
                thumbnail: true
                columns:
                  - type: 0
                  - type: 2
                  - type: 8
                  - type: 7
                gallery_width: 50
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JXCE8YDV1HCDC5EE2W67VYP4: &ref_0
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data: null
                x-apifox-orders:
                  - 01JXCE8YDV1HCDC5EE2W67VYP4
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
                msg: anim adipisicing ullamco dolore et
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: File
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-306842109-run
components:
  schemas:
    ExplorerView:
      title: ExplorerView
      type: object
      properties:
        page_size:
          type: integer
          description: The number of items to display per page.
          minimum: 50
        order:
          type: string
          description: The field to order the results by.
          maxLength: 255
        order_direction:
          type: string
          description: The direction to order the results.
          enum:
            - asc
            - desc
        view:
          type: string
          description: The view mode for the explorer.
          enum:
            - list
            - grid
            - gallery
          x-apifox-enum:
            - value: list
              name: ''
              description: List view.
            - value: grid
              name: ''
              description: Grid view.
            - value: gallery
              name: ''
              description: Gallery view.
        thumbnail:
          type: boolean
          description: Whether to display thumbnails in grid view.
        gallery_width:
          type: integer
          description: The width of a single item in gallery view.
          minimum: 50
          maximum: 500
        columns:
          type: array
          description: The columns to display in the list view.
          maxItems: 1000
          items:
            $ref: '#/components/schemas/ListViewColumn'
      required:
        - page_size
      x-apifox-orders:
        - page_size
        - order
        - order_direction
        - view
        - thumbnail
        - gallery_width
        - columns
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
    ListViewColumn:
      type: object
      properties:
        type:
          type: integer
          minimum: 0
          description: >-
            Column type ID, predefined in
            [Column.tsx](https://github.com/cloudreve/frontend/blob/master/src/component/FileManager/Explorer/ListView/Column.tsx).
        width:
          type: integer
          description: >-
            Width of the column in px. Default width will be used for null
            value.
          nullable: true
        props:
          type: object
          properties:
            metadata_key:
              type: string
              description: Metadata key for metadata column (`type` equals `3`).
              nullable: true
          x-apifox-orders:
            - metadata_key
          x-apifox-ignore-properties: []
          nullable: true
      x-apifox-orders:
        - type
        - width
        - props
      required:
        - type
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
