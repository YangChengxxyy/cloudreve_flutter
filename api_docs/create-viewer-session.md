# Create viewer session

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /file/viewerSession:
    put:
      summary: Create viewer session
      deprecated: false
      description: >-
        Create a temporary WOPI session for 3rd party file apps or WOPI clients
        to download or edit files.
      tags:
        - File
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
                uri:
                  type: string
                  description: >-
                    [URI](https://docs.cloudreve.org/api/file-uri) of the target
                    file.
                  examples:
                    - cloudreve://JbVTn@share/1.docx
                version:
                  type: string
                  description: >-
                    Desired version ID to open. Empty value indicating the
                    current version.
                  examples:
                    - zOe1D
                  nullable: true
                viewer_id:
                  type: string
                  description: >-
                    ID of the file apps. List of available file apps can be get
                    from `file_viewers` in [Get site
                    settings](./get-site-settings-289489676e0) under `explorer`
                    section.
                  examples:
                    - af01b85b-f57d-46d2-8ad6-1d9b96548e78
                preferred_action:
                  type: string
                  enum:
                    - edit
                    - view
                  x-apifox-enum:
                    - value: edit
                      name: ''
                      description: Read and Write.
                    - value: view
                      name: ''
                      description: Readonly.
                  description: Preferred action for this session.
                parent_uri:
                  type: string
                  description: >-
                    [URI](https://docs.cloudreve.org/api/file-uri) of the parent
                    folder where the file is located.

                    Usualy it can be calculated from `uri` field. But for
                    single-file symbolic links, `uri` can be a different folder
                    or filesystem from where the symbolic link is located.
                  examples:
                    - cloudreve://my/Inspirations
                  nullable: true
              required:
                - uri
                - preferred_action
                - viewer_id
              x-apifox-orders:
                - uri
                - version
                - viewer_id
                - preferred_action
                - parent_uri
              x-apifox-ignore-properties: []
            example:
              uri: cloudreve://JbVTn@share/1.docx
              viewer_id: af01b85b-f57d-46d2-8ad6-1d9b96548e78
              preferred_action: edit
              parent_uri: cloudreve://my/Inspirations
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JXCD192KRDE5TTFAXWB3WNAE: &ref_7
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data:
                        type: object
                        properties:
                          session:
                            type: object
                            properties:
                              id: &ref_0
                                type: string
                                format: uuid
                                examples:
                                  - 7f50a377-e55b-41f3-a64e-3624e9cd120d
                                description: ID of the viewer session.
                              access_token: &ref_1
                                type: string
                                description: >-
                                  [AccessToken](https://learn.microsoft.com/en-us/microsoft-365/cloud-storage-partner-program/rest/concepts#access-token)
                                  that can be used to get/update the file via
                                  WOPI protocol.
                              expires: &ref_2
                                type: integer
                                examples:
                                  - 1749576616773
                                description: Unix timestamp when the session is expired.
                            x-apifox-orders: &ref_3
                              - id
                              - access_token
                              - expires
                            required:
                              - id
                              - access_token
                              - expires
                          wopi_src: &ref_4
                            type: string
                            description: >-
                              [WOPISrc](https://learn.microsoft.com/en-us/microsoft-365/cloud-storage-partner-program/rest/concepts#wopisrc)
                              of the target WOPI viewer.
                            nullable: true
                        x-apifox-orders: &ref_5
                          - session
                          - wopi_src
                        description: >-
                          Response content. In some error type, e.g. lock
                          conflicting errors, this field wil present details of
                          the error, e.g. who is locking the current file.
                        required:
                          - session
                      code: &ref_6
                        type: integer
                        description: |-
                          Response code.
                          `0` - Success.
                        default: 0
                        examples:
                          - 0
                    required:
                      - code
                x-apifox-orders:
                  - 01JXCD192KRDE5TTFAXWB3WNAE
                properties:
                  data:
                    type: object
                    properties:
                      session:
                        type: object
                        properties:
                          id: *ref_0
                          access_token: *ref_1
                          expires: *ref_2
                        x-apifox-orders: *ref_3
                        required:
                          - id
                          - access_token
                          - expires
                        x-apifox-ignore-properties: []
                      wopi_src: *ref_4
                    x-apifox-orders: *ref_5
                    description: >-
                      Response content. In some error type, e.g. lock
                      conflicting errors, this field wil present details of the
                      error, e.g. who is locking the current file.
                    required:
                      - session
                    x-apifox-ignore-properties: []
                  code: *ref_6
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
                  - data
                  - code
                  - msg
                  - error
                  - correlation_id
              example:
                code: 0
                data:
                  session:
                    id: 7f50a377-e55b-41f3-a64e-3624e9cd120d
                    access_token: >-
                      7f50a377-e55b-41f3-a64e-3624e9cd120d.y0SWlTrJFWd2dcPg7fcyx2tSovFpsq45U2iHGfjeyYq23Zkq5KOnyLgcwPkwZEy27gKLQW4b9Lv713Objot2dvsiuJq4vbDKvx637mnolww35tDbIMOdJKDUb5J8qDzD
                    expires: 1749576616773
                  wopi_src: >-
                    http://localhost:9980/browser/594b605/cool.html?WOPISrc=http%3A%2F%2Fhost.docker.internal%3A5212%2Fapi%2Fv4%2Ffile%2Fwopi%2F6Zebb3Ug&lang=lng
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: File
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-306794559-run
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
          additionalProperties: *ref_7
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
