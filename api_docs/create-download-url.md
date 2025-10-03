# Create download URL

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /file/url:
    post:
      summary: Create download URL
      deprecated: false
      description: Create a temporary anonymous URLs to download file content.
      tags:
        - File
        - 'Auth: JWT Optional'
      parameters:
        - name: X-Cr-Context-Hint
          in: header
          description: >-
            Optional context hint to speed up DB queries. You can get its value
            from the response of listing files. It is recommended to set this
            header if you need to perform action on files that are just listed
            by [List files](/list-files-300233178e0) API.
          required: false
          example: b832b998-7ece-4ffd-ba6b-afb64530ca70
          schema:
            type: string
            format: uuid
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
                uris:
                  type: array
                  items:
                    type: string
                  minItems: 1
                  description: >-
                    List of [URI](https://docs.cloudreve.org/api/file-uri) of
                    the target files.
                download:
                  type: boolean
                  description: >-
                    Whether the desired URL is for downloading files.

                    For supported storage policy, browser will download file
                    instead of previewing it directly if this field is set to 
                    `true`.
                  nullable: true
                redirect:
                  type: boolean
                  description: >-
                    Only works if only 1 items presented in `uris`. 

                    If set to `true`, the HTTP response will use 302 status code
                    to redirect to target URL instead of returning result in
                    JSON response.
                  nullable: true
                entity:
                  type: string
                  examples:
                    - aO8j
                  description: >-
                    Only works if only 1 items presented in `uris` and `archive`
                    is `false`. Specify preferred ID of the file blob.

                    By default, latest version blob will be selected.
                  nullable: true
                use_primary_site_url:
                  type: boolean
                  description: >-
                    By default, the host domain of file URL will try to
                    accommodate the actual `Host` that the client site
                    requesting the API (If the `Host` is presented in
                    primary/secondary site URL setting in dashboard). If you
                    wish to force using primary site URL, please set this to
                    `true`.
                  nullable: true
                skip_error:
                  type: boolean
                  description: >-
                    Whether to skip errors and return partial successful file
                    URLs. If set to `false` or omited, the whole request will
                    fail if errors occurs for any items in `uris`.
                  nullable: true
                archive:
                  type: boolean
                  description: >-
                    Whether to use server-side batch download.

                    If set to `true`, only one URl will be returned for multiple
                    target files. This URL will trigger server-side archving for
                    target files, resulting in one `.zip` file containing all
                    target files.
                  nullable: true
                no_cache:
                  type: boolean
                  description: Whether to disable blob URL cache.
                  nullable: true
              x-apifox-orders:
                - uris
                - download
                - redirect
                - entity
                - use_primary_site_url
                - skip_error
                - archive
                - no_cache
              required:
                - uris
              x-apifox-ignore-properties: []
            examples:
              '1':
                value:
                  uris:
                    - cloudreve://my/The%20Man.mp3
                    - >-
                      cloudreve://my/Taylor%20Swift%20-%20Untouchable%20(Taylor%E2%80%99s%20Version).mp3
                    - >-
                      cloudreve://my/%E9%81%A0%E9%87%8E%E3%81%B2%E3%81%8B%E3%82%8B%20-%20LOVE%202000.mp3
                    - cloudreve://my/Taylor%20Swift%20-%20Guilty%20as%20Sin.mp3
                  archive: true
                summary: Server-side batch download
              '2':
                value:
                  uris:
                    - cloudreve://my/The%20Man.mp3
                    - >-
                      cloudreve://my/Taylor%20Swift%20-%20Untouchable%20(Taylor%E2%80%99s%20Version).mp3
                    - >-
                      cloudreve://my/%E9%81%A0%E9%87%8E%E3%81%B2%E3%81%8B%E3%82%8B%20-%20LOVE%202000.mp3
                    - cloudreve://my/Taylor%20Swift%20-%20Guilty%20as%20Sin.mp3
                  skip_error: true
                  download: true
                summary: Get download URL for multiple files
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JXBWY6PKE0E0MVD4NPB64FTJ: &ref_6
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      data:
                        type: object
                        properties:
                          urls:
                            type: array
                            items:
                              type: object
                              properties:
                                url: &ref_0
                                  type: string
                                  description: >-
                                    URL to get the file, without authorization
                                    header required.
                                stream_saver_display_name: &ref_1
                                  type: string
                                  description: >-
                                    In some cases, browser/client should process
                                    the download with preferred download name.
                                    This field will be set to the preferred file
                                    name.
                                  examples:
                                    - MyFile.mp3
                                  nullable: true
                              x-apifox-orders: &ref_2
                                - url
                                - stream_saver_display_name
                              required:
                                - url
                            description: List of file URL.
                          expires: &ref_3
                            type: string
                            format: date-time
                            examples:
                              - '2025-06-10T12:06:55.011624+08:00'
                            description: >-
                              The earliest expire time among the returned
                              `urls`.
                        x-apifox-orders: &ref_4
                          - urls
                          - expires
                        description: >-
                          Response content. In some error type, e.g. lock
                          conflicting errors, this field wil present details of
                          the error, e.g. who is locking the current file.
                        required:
                          - urls
                          - expires
                      error: &ref_5
                        type: string
                        description: Internal error message, only visable in debug mode.
                        nullable: true
                    required:
                      - data
                x-apifox-orders:
                  - 01JXBWY6PKE0E0MVD4NPB64FTJ
                properties:
                  data:
                    type: object
                    properties:
                      urls:
                        type: array
                        items:
                          type: object
                          properties:
                            url: *ref_0
                            stream_saver_display_name: *ref_1
                          x-apifox-orders: *ref_2
                          required:
                            - url
                          x-apifox-ignore-properties: []
                        description: List of file URL.
                      expires: *ref_3
                    x-apifox-orders: *ref_4
                    description: >-
                      Response content. In some error type, e.g. lock
                      conflicting errors, this field wil present details of the
                      error, e.g. who is locking the current file.
                    required:
                      - urls
                      - expires
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
                  error: *ref_5
                  aggregated_error:
                    type: object
                    properties: {}
                    x-apifox-orders:
                      - 01JSRF01R97ZK0FE2NPYS810YS
                    description: >-
                      Map of multiple error in batch request. The key is the
                      failed resource ID, it could be a file URI or a resource
                      ID, the value is a `Response`.
                    additionalProperties: *ref_6
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
                  - data
                  - code
                x-apifox-ignore-properties:
                  - data
                  - code
                  - msg
                  - error
                  - aggregated_error
                  - correlation_id
              examples:
                '1':
                  summary: Server-side batch download
                  value:
                    code: 0
                    data:
                      urls:
                        - url: >-
                            http://localhost:5173/api/v4/file/archive/56bb8329-3afa-4137-9ebb-2a07b6ea19b9/archive.zip?sign=1CgU15Is0ezKeTVKE_OAu2tJJoB6lN5s_DvRXTcP7GQ%3D%3A1749525301
                      expires: '2025-06-10T11:15:01.186053+08:00'
                    msg: ''
                '2':
                  summary: Get download URL for multiple files
                  value:
                    code: 0
                    data:
                      urls:
                        - url: >-
                            http://localhost:5173/api/v4/file/content/DprI3/0/The%20Man.mp3?download=true&sign=btoUMo1Z3K-i-zvUZ_YfCOr92up-tJXBrtJ4Fr-Zbfs%3D%3A1749528415
                        - url: >-
                            http://localhost:5173/api/v4/file/content/Qynu9/0/Taylor%20Swift%20-%20Untouchable%20%28Taylor%E2%80%99s%20Version%29.mp3?download=true&sign=5U3QzjUBRDgMfwiaQHPT-Y40ZOz1hDwSQq14DtT26Sg%3D%3A1749528415
                        - url: >-
                            http://localhost:5173/api/v4/file/content/8zJJC0/0/%E9%81%A0%E9%87%8E%E3%81%B2%E3%81%8B%E3%82%8B%20-%20LOVE%202000.mp3?download=true&sign=vIE8OIoWmwhLDhl5VyO5wysIZTVEhHpOAQfBt1r1zW0%3D%3A1749528415
                        - url: >-
                            http://localhost:5173/api/v4/file/content/o7OhD/0/Taylor%20Swift%20-%20Guilty%20as%20Sin.mp3?download=true&sign=zJmW1lcpI-klLL5D2hC_nDxwQRzybsY-94peD_cpEBQ%3D%3A1749528415
                      expires: '2025-06-10T12:06:55.011624+08:00'
                    msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: File
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-306560314-run
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
          additionalProperties: *ref_6
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
