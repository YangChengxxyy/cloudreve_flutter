# List files

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /file:
    get:
      summary: List files
      deprecated: false
      description: >-
        List files under given [URI](https://docs.cloudreve.org/api/file-uri),
        can also be used to search files if the URI contains search conditions.
      tags:
        - File
        - 'Auth: JWT Optional'
      parameters:
        - name: uri
          in: query
          description: >-
            [URI](https://docs.cloudreve.org/api/file-uri) of the folder to
            list.

            You can specify [Query - Search
            Conditions](https://docs.cloudreve.org/api/file-uri#query) in the
            URI to search files.
          required: true
          example: cloudreve://my/Luke's%20AMA
          schema:
            type: string
            examples:
              - >-
                cloudreve://my/Luke's%20AMA?name=.docx&case_folding=&size_gte=1048576&size_lte=1047527424
        - name: page
          in: query
          description: Desired page, only used in offset pagination.
          required: true
          example: 0
          schema:
            type: integer
            minimum: 0
        - name: page_size
          in: query
          description: >-
            Page size. Cannot exceed navigator's max supported size defined in
            `max_page_size` form list response.
          required: true
          example: 50
          schema:
            type: integer
        - name: order_by
          in: query
          description: >-
            All possible values are defined in `order_by_options` from list
            response.
          required: false
          example: created_at
          schema:
            type: string
            default: created_at
        - name: order_direction
          in: query
          description: >-
            All possible values are defined in `order_direction_options` from
            list response.
          required: false
          example: asc
          schema:
            type: string
            default: asc
        - name: next_page_token
          in: query
          description: >-
            Token for requesting next page. Empty value means requesting the
            first page. Only used in cursor pagination.
          required: false
          example: 4|eyJpZCI6InJwR3pZMUY1In0=
          schema:
            type: string
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
            format: uuid
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JW06XYR9529E39JBEVYWG7SS: &ref_1
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data: &ref_0
                        description: Response content
                        $ref: '#/components/schemas/ListResponse'
                    required:
                      - data
                x-apifox-orders:
                  - 01JW06XYR9529E39JBEVYWG7SS
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
                  files:
                    - type: 1
                      id: N93dL8ig
                      name: Takeout
                      permission: null
                      created_at: '2025-02-13T20:14:15+08:00'
                      updated_at: '2025-02-13T20:17:36+08:00'
                      size: 0
                      metadata: {}
                      path: cloudreve://my/Luke's%20AMA/Takeout
                      capability: 39/9
                      owned: true
                      primary_entity: zOie
                    - type: 1
                      id: 8zXA03uL
                      name: 新建文件夹
                      permission: null
                      created_at: '2025-02-20T15:16:28+08:00'
                      updated_at: '2025-02-20T15:16:28+08:00'
                      size: 0
                      metadata:
                        tag:asd: ''
                      path: >-
                        cloudreve://my/Luke's%20AMA/%E6%96%B0%E5%BB%BA%E6%96%87%E4%BB%B6%E5%A4%B9
                      capability: 39/9
                      owned: true
                      primary_entity: zOie
                    - type: 0
                      id: 8zXBp3UL
                      name: sample.psd
                      permission: null
                      created_at: '2025-05-22T14:34:24+08:00'
                      updated_at: '2025-05-22T14:34:24+08:00'
                      size: 3285099
                      metadata:
                        thumb:disabled: ''
                      path: >-
                        cloudreve://my/Luke's%20AMA/%E5%B0%8F%E7%88%B1%E8%B1%86.psd
                      capability: 39/9
                      owned: true
                      primary_entity: jYOAc8
                  parent:
                    type: 1
                    id: 0OmpAGUn
                    name: Luke's AMA
                    permission: null
                    created_at: '2024-01-27T10:58:20+08:00'
                    updated_at: '2025-05-23T15:09:15+08:00'
                    size: 0
                    metadata: null
                    path: cloudreve://my/Luke's%20AMA
                    capability: 39/9
                    owned: true
                    primary_entity: zOie
                  pagination:
                    page: 0
                    page_size: 100
                    is_cursor: true
                  props:
                    capability: 39/9
                    max_page_size: 2000
                    order_by_options:
                      - name
                      - size
                      - updated_at
                      - created_at
                    order_direction_options:
                      - asc
                      - desc
                  context_hint: 5c6ea8a1-86e0-4967-8d40-598c6eb78bff
                  mixed_type: false
                  storage_policy:
                    id: Emta
                    name: minio
                    type: s3
                    max_size: 0
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: File
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-300233178-run
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
    ListResponse:
      type: object
      properties:
        files:
          type: array
          items: &ref_2
            $ref: '#/components/schemas/FileResponse'
          description: List of files.
        parent: *ref_2
        pagination:
          $ref: '#/components/schemas/PaginationResults'
          description: Pagination props.
        props:
          $ref: '#/components/schemas/NavigatorProps'
          description: Navigator props.
        context_hint:
          type: string
          format: uuid
          examples:
            - 4008c479-0e1b-409b-950d-e12fd8003fb0
          description: >-
            ContextHint is used to speed up following operations under this
            listed directory. It persists some intermedia state so that the
            following request don't need to query database again.

            One typical case is loading thumbnails under the listed folder,
            carry context hint in `X-Cr-Context-Hint` header in the thumbnail
            request can speed up backend database operations.
        recursion_limit_reached:
          type: boolean
          description: >-
            Only applies to search list, indicating whether the recursion limit
            has been reached. Client side should suggest user narrow down search
            root folder in this case.
          nullable: true
        mixed_type:
          type: boolean
          description: >-
            If it's `false`, folders is alway placed in front of the file list.
            If it's `true`, folders might be mixed with files in the list.
            Cloudreve will try its best not to mix file types, but in search
            result list, this value is `false`.
        single_file_view:
          type: boolean
          description: >-
            Indicating the frontend UI should use "Single share file" UI, since
            there's only one file in single file share link.
          nullable: true
        storage_policy: &ref_3
          description: >-
            Storage policy that should be used to upload new files to this
            folder.
          $ref: '#/components/schemas/StoragePolicy'
        view:
          description: |-
            View setting stored in the server for current folder.
            It could be null, indicating local preference is preferred.
          $ref: '#/components/schemas/ExplorerView'
      x-apifox-orders:
        - files
        - parent
        - pagination
        - props
        - context_hint
        - recursion_limit_reached
        - mixed_type
        - single_file_view
        - storage_policy
        - view
      required:
        - files
        - parent
        - pagination
        - props
        - context_hint
        - mixed_type
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
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
    StoragePolicy:
      type: object
      properties:
        id:
          type: string
          examples:
            - 96u1
          description: ID of the storage policy.
        name:
          type: string
          examples:
            - Default storage policy
          description: Display name of the storage policy.
        allowed_suffix:
          type: array
          items:
            type: string
            examples:
              - jpg
              - png
              - zip
            description: File extension name without leading `.`.
          description: >-
            List of file extensions allowed in this storage policy. Empty list
            means no limit on allowed extensions.
          nullable: true
        denied_suffix:
          type: array
          items:
            type: string
            description: File extension name without leading `.`.
          description: >-
            List of file extensions denied in this storage policy. Empty list
            means no limit on denied extensions.
          nullable: true
        type:
          type: string
          description: Storage provider type.
          enum:
            - local
            - qiniu
            - upyun
            - oss
            - cos
            - s3
            - onedrive
            - remote
            - obs
            - load_balance
            - ks3
          x-apifox-enum:
            - value: local
              name: ''
              description: ''
            - value: qiniu
              name: ''
              description: ''
            - value: upyun
              name: ''
              description: ''
            - value: oss
              name: ''
              description: ''
            - value: cos
              name: ''
              description: ''
            - value: s3
              name: ''
              description: ''
            - value: onedrive
              name: ''
              description: ''
            - value: remote
              name: ''
              description: ''
            - value: obs
              name: ''
              description: ''
            - value: load_balance
              name: ''
              description: ''
            - value: ks3
              name: ''
              description: ''
          examples:
            - local
        allowed_name_regexp:
          type: string
          description: If not empty, file name must match this regex.
          nullable: true
        denied_name_regexp:
          type: string
          description: If not empty, file name must NOT match this regex.
          nullable: true
        max_size:
          type: number
          description: Max allowed size of a single file. `0` means no limit.
        relay:
          type: boolean
          description: >-
            Indicates whether upload needs to be proxyed by Cloudreve. If
            `true`, the client should treat it as a `local` storage policy to
            process uploading.
          nullable: true
        weight:
          type: number
          description: >-
            Load balance weight of this storage policy. Only presented if this
            storage policy is child of a load balance storage policy.
          nullable: true
        children:
          type: array
          items: *ref_3
          description: >-
            Child storage policies, only presented if policy type equals
            `load_balance`.
          nullable: true
        chunk_concurrency:
          type: integer
          description: Number of threads to use for concurrent chunk uploading.
          nullable: true
      x-apifox-orders:
        - id
        - name
        - allowed_suffix
        - denied_suffix
        - type
        - allowed_name_regexp
        - denied_name_regexp
        - max_size
        - relay
        - weight
        - children
        - chunk_concurrency
      required:
        - id
        - max_size
        - type
        - name
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
    NavigatorProps:
      type: object
      properties:
        capability:
          type: string
          description: >-
            [Boolset](https://docs.cloudreve.org/api/boolset) encoded set of
            capabilities supported in this filesystem.

            Capability definition can be found at [File System
            Capabilities](https://docs.cloudreve.org/api/boolset#file-system-capability)
          examples:
            - 39/9
        max_page_size:
          type: integer
          description: Max supported page size.
          examples:
            - 2000
        order_by_options:
          type: array
          items:
            type: string
            examples:
              - name
              - size
              - updated_at
              - created_at
          description: List of supported `order by` fields.
        order_direction_options:
          type: array
          items:
            type: string
            examples:
              - asc
              - desc
          description: List of supported order direction.
      x-apifox-orders:
        - capability
        - max_page_size
        - order_by_options
        - order_direction_options
      required:
        - capability
        - max_page_size
        - order_by_options
        - order_direction_options
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
    PaginationResults:
      type: object
      properties:
        page:
          type: integer
          examples:
            - 1
          description: Current page starting from `0`, only applied to offset pagination.
        page_size:
          type: integer
          examples:
            - 50
          description: Maximum items included in one page.
        total_items:
          type: integer
          examples:
            - 5664
          description: Total count of items, only applied to offset pagination.
        next_token:
          type: string
          examples:
            - eyJpZCI6Inh4cUR1QSJ9
          description: Token used to request the next page in cursor pagination.
        is_cursor:
          type: boolean
          description: Whether the response is using cursor pagination.
      x-apifox-orders:
        - page
        - page_size
        - total_items
        - next_token
        - is_cursor
      required:
        - page
        - page_size
        - next_token
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
    FileResponse:
      type: object
      properties:
        type:
          type: integer
          enum:
            - 0
            - 1
          x-apifox-enum:
            - value: 0
              name: File
              description: ''
            - value: 1
              name: Folder
              description: ''
          description: Type of this file.
        id:
          type: string
          description: ID of this file.
        name:
          type: string
          examples:
            - btn_google_signin_dark_normal_web@2x.png
          description: >-
            Name of this file. 


            It might not be expected display name. For files under trash bin,
            this field is a non-readable UUID. The expected display name should
            be retrieved from `metadata` with name `sys:restore_uri`, which can
            be parsed as a [URI](https://docs.cloudreve.org/api/file-uri).
        permission:
          type: string
          description: >-
            [Boolset](https://docs.cloudreve.org/api/boolset) encoded
            permissions granted by current authenticated user. For `null`, all
            permissions are granted.

            Permission definition can be found at [File
            Permissions](https://docs.cloudreve.org/api/boolset#file-permission)
          nullable: true
        created_at:
          type: string
          description: Datetime when the file is created.
          format: date-time
          examples:
            - '2025-05-24T10:55:22+08:00'
        updated_at:
          type: string
          description: Datetime when the file is last updated.
          format: date-time
          examples:
            - '2025-05-24T10:55:22+08:00'
        size:
          type: integer
          examples:
            - 7536
          description: Size of the file, also the size of current primary version blob.
        metadata:
          type: object
          properties: {}
          x-apifox-orders: []
          additionalProperties:
            type: string
          description: >-
            Key-value  map of all metadata.

            Some special metadata might affect the file's behavior, please refer
            to [Metadata](https://docs.cloudreve.org/en/api/metadata) for
            details.
          x-apifox-ignore-properties: []
        path:
          type: string
          examples:
            - >-
              cloudreve://my/%E9%97%A8%E7%A5%A8/btn_google_signin_dark_normal_web%402x.png
          description: '[URI](https://docs.cloudreve.org/api/file-uri) of this file.'
        shared:
          type: boolean
          description: Whether this file has share links.
        capability:
          type: string
          description: >-
            [Boolset](https://docs.cloudreve.org/api/boolset) encoded set of
            capabilities supported.
          examples:
            - 39/9
          nullable: true
        owned:
          type: boolean
          description: Whether this file is owned by current authenticated user.
        primary_entity:
          type: string
          description: ID of the primary version blob.
          nullable: true
        extended_info:
          anyOf:
            - $ref: '#/components/schemas/ExtendedInfo'
            - type: 'null'
          description: Extended info for this file, by default it's not presented.
        folder_summary:
          anyOf:
            - $ref: '#/components/schemas/FolderSummary'
            - type: 'null'
          description: Statistics of this folder, by default it's not presented.
      required:
        - type
        - id
        - name
        - created_at
        - updated_at
        - size
        - path
        - owned
        - metadata
      x-apifox-orders:
        - type
        - id
        - name
        - permission
        - created_at
        - updated_at
        - size
        - metadata
        - path
        - shared
        - capability
        - owned
        - primary_entity
        - extended_info
        - folder_summary
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
    FolderSummary:
      type: object
      properties:
        size:
          type: integer
          description: Total size of this folder.
          examples:
            - 8001
        files:
          type: integer
          description: Count of files under this folder (recursive).
          examples:
            - 3
        folders:
          type: integer
          description: Count of folders under this folder (recursive).
          examples:
            - 1
        completed:
          type: boolean
          description: >-
            Whether the size calculation is completed. If there're too many
            children under this folder, it may exceed the limit, in this case
            only subset of files are counted.
        calculated_at:
          type: string
          examples:
            - '2025-05-24T11:02:43.086056909+08:00'
          description: When the summary is calculated. It may be a cached result.
      required:
        - size
        - files
        - folders
        - completed
        - calculated_at
      x-apifox-orders:
        - size
        - files
        - folders
        - completed
        - calculated_at
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
    ExtendedInfo:
      type: object
      properties:
        storage_policy:
          description: >-
            Preferred storage policy of this file or folder. Note that it might
            not be the one used by this file's blobs.
          anyOf:
            - *ref_3
            - type: 'null'
        storage_policy_inherited:
          type: boolean
          description: >-
            Only applies to folders. Indicating whether this storage policy
            setting is inherited from parent folders.
        storage_used:
          type: integer
          examples:
            - 331469
          description: >-
            Storage used by this file, equals to sum of size for all referred
            blobs.
        shares:
          type: array
          items:
            $ref: '#/components/schemas/Share'
          description: List of share links for this file.
          nullable: true
        entities:
          type: array
          items:
            $ref: '#/components/schemas/Entity'
            description: List of file blobs referred by this file.
          nullable: true
        permissions:
          anyOf:
            - $ref: '#/components/schemas/PermissionSetting'
            - type: 'null'
          description: Permission setting for this file.
        direct_links:
          type: array
          items:
            type: object
            properties:
              id:
                type: string
                description: ID of the direct link.
                examples:
                  - xMxIa
              url:
                type: string
                description: URL of the direct link.
                examples:
                  - http://localhost:5173/f/xMxIa/New%20file.excalidraw
              downloaded:
                type: number
                description: Count of link views.
              created_at:
                type: string
                description: Datetime when the link is created.
                format: date-time
                examples:
                  - '2025-06-26T17:55:30+08:00'
            x-apifox-orders:
              - id
              - url
              - downloaded
              - created_at
            required:
              - id
              - url
              - created_at
              - downloaded
            x-apifox-ignore-properties: []
          description: >-
            List of redirected direct links. Only visable to file owners or
            administrators.
          nullable: true
      x-apifox-orders:
        - storage_policy
        - storage_policy_inherited
        - storage_used
        - shares
        - entities
        - permissions
        - direct_links
      required:
        - storage_policy_inherited
        - storage_used
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
    PermissionSetting:
      type: object
      properties:
        user_explicit:
          type: object
          properties: {}
          x-apifox-orders: []
          additionalProperties:
            type: string
            examples:
              - AQ==
          description: Map of explicit permission setting from user ID to boolset.
          x-apifox-ignore-properties: []
        group_explicit:
          type: object
          properties: {}
          x-apifox-orders: []
          description: Map of explicit permission setting from group ID to boolset.
          additionalProperties:
            type: string
            examples:
              - AQ==
          x-apifox-ignore-properties: []
        same_group:
          type: string
          description: Permission for users under the same group as the file owner.
        other:
          type: string
          description: Permission for users under the different groups as the file owner.
        anonymous:
          type: string
          description: Permission for anonymous users.
          examples:
            - AQ==
        everyone:
          type: string
          description: Permission for everyone else.
          examples:
            - AQ==
      x-apifox-orders:
        - user_explicit
        - group_explicit
        - same_group
        - other
        - anonymous
        - everyone
      description: >-
        Permission setting for different groups/users. Encoded as
        [boolset](https://docs.cloudreve.org/api/boolset).
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
    Entity:
      type: object
      properties:
        id:
          type: string
          examples:
            - OlNQfZ
          description: ID of the blob.
        size:
          type: integer
          description: Size of the blob.
          examples:
            - 323595
        type:
          type: integer
          enum:
            - 0
            - 1
            - 2
          x-apifox-enum:
            - value: 0
              name: Version
              description: File version data.
            - value: 1
              name: Thumbnail
              description: File thumbnail.
            - value: 2
              name: LivePhoto
              description: Video data for Live Photo.
          description: Type of the blob.
        created_at:
          type: string
          format: date-time
          examples:
            - '2025-05-24T02:31:17+08:00'
          description: Datetime when the blob is created.
        storage_policy:
          anyOf:
            - *ref_3
            - type: 'null'
        created_by:
          type: object
          x-apifox-refs:
            01JW03GK0SST4PHYSXZ0WB2ZXZ: &ref_7
              $ref: '#/components/schemas/User'
              x-apifox-overrides:
                language: null
                credit: null
                preferred_theme: null
                status: null
                group:
                  type: object
                  x-apifox-refs: &ref_4
                    01JW03H6ZXMZ7JH1JK9T8VW0CA: &ref_6
                      $ref: '#/components/schemas/Group'
                      x-apifox-overrides:
                        trash_retention: null
                        direct_link_batch_size: null
                        permission: null
                  x-apifox-orders: &ref_5
                    - 01JW03H6ZXMZ7JH1JK9T8VW0CA
                  properties: {}
                anonymous: null
              required:
                - group
          x-apifox-orders:
            - 01JW03GK0SST4PHYSXZ0WB2ZXZ
          properties:
            id:
              type: string
              description: ID of the user.
              examples:
                - 6JIo
            email:
              type: string
              description: Email of the user. For anonymous session, it is empty.
              nullable: true
            nickname:
              type: string
              description: Display name of the user.
              examples:
                - Johnny Zhang
              nullable: true
            created_at:
              type: string
              description: >-
                Time at which the user is created. For anonymous session, this
                value is invalid.
              format: date-time
              examples:
                - '2023-08-06T19:21:59+08:00'
            group:
              type: object
              x-apifox-refs: *ref_4
              x-apifox-orders: *ref_5
              properties:
                id:
                  type: string
                  examples:
                    - 1AI8
                  description: ID of the group.
                name:
                  type: string
                  description: Name of the group.
                  examples:
                    - Admin
              required:
                - id
                - name
              x-apifox-ignore-properties:
                - id
                - name
            avatar:
              type: string
              description: >-
                Source type of the profile picture. Empty value indicates no
                profile picture.
              enum:
                - file
                - gravatar
              x-apifox-enum:
                - value: file
                  name: ''
                  description: Uploaded avatar
                - value: gravatar
                  name: ''
                  description: Use Gravatar.
              examples:
                - file
              nullable: true
            disable_view_sync:
              type: string
              description: Whether syncing view setting to server is enabled.
              nullable: true
            share_links_in_profile:
              type: string
              description: What type of share link is visable in user's profile.
              enum:
                - '[Empty string]'
                - all_share
                - hide_share
              x-apifox-enum:
                - value: '[Empty string]'
                  name: ''
                  description: Only public share links are visable.
                - value: all_share
                  name: ''
                  description: All share links are visable.
                - value: hide_share
                  name: ''
                  description: No share links are visable.
              nullable: true
          required:
            - id
            - nickname
            - created_at
            - group
            - avatar
          x-apifox-ignore-properties:
            - id
            - email
            - nickname
            - created_at
            - group
            - avatar
            - disable_view_sync
            - share_links_in_profile
      required:
        - id
        - size
        - type
        - created_at
        - created_by
      x-apifox-orders:
        - id
        - size
        - type
        - created_at
        - storage_policy
        - created_by
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
    User:
      type: object
      properties:
        id:
          type: string
          description: ID of the user.
          examples:
            - 6JIo
        email:
          type: string
          description: Email of the user. For anonymous session, it is empty.
          nullable: true
        nickname:
          type: string
          description: Display name of the user.
          examples:
            - Johnny Zhang
          nullable: true
        created_at:
          type: string
          description: >-
            Time at which the user is created. For anonymous session, this value
            is invalid.
          format: date-time
          examples:
            - '2023-08-06T19:21:59+08:00'
        anonymous:
          type: boolean
          description: Indicating whether the session is anonymous.
          nullable: true
        group: *ref_6
        status:
          type: string
          enum:
            - active
            - inactive
            - manual_banned
            - sys_banned
          x-apifox-enum:
            - value: active
              name: ''
              description: ''
            - value: inactive
              name: ''
              description: ''
            - value: manual_banned
              name: ''
              description: ''
            - value: sys_banned
              name: ''
              description: ''
          nullable: true
        avatar:
          type: string
          description: >-
            Source type of the profile picture. Empty value indicates no profile
            picture.
          enum:
            - file
            - gravatar
          x-apifox-enum:
            - value: file
              name: ''
              description: Uploaded avatar
            - value: gravatar
              name: ''
              description: Use Gravatar.
          examples:
            - file
          nullable: true
        preferred_theme:
          type: string
          description: Primary color of preferred theme.
          examples:
            - '#131313'
          nullable: true
        credit:
          type: integer
          description: Credit balance.
          nullable: true
        language:
          type: string
          examples:
            - en-US
          description: Primary language.
        disable_view_sync:
          type: string
          description: Whether syncing view setting to server is enabled.
          nullable: true
        share_links_in_profile:
          type: string
          description: What type of share link is visable in user's profile.
          enum:
            - '[Empty string]'
            - all_share
            - hide_share
          x-apifox-enum:
            - value: '[Empty string]'
              name: ''
              description: Only public share links are visable.
            - value: all_share
              name: ''
              description: All share links are visable.
            - value: hide_share
              name: ''
              description: No share links are visable.
          nullable: true
      required:
        - id
        - nickname
        - created_at
        - anonymous
        - group
        - avatar
        - preferred_theme
        - credit
        - language
      x-apifox-orders:
        - id
        - email
        - nickname
        - created_at
        - anonymous
        - group
        - status
        - avatar
        - preferred_theme
        - credit
        - language
        - disable_view_sync
        - share_links_in_profile
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
    Group:
      type: object
      properties:
        id:
          type: string
          examples:
            - 1AI8
          description: ID of the group.
        name:
          type: string
          description: Name of the group.
          examples:
            - Admin
        permission:
          type: string
          description: >-
            Permission boolset of the group. Refer to
            [Boolset](https://docs.cloudreve.org/api/boolset) for how to read
            it.
          examples:
            - /f8B
        direct_link_batch_size:
          type: integer
          examples:
            - 10
          description: >-
            The maximum number of files allowed for users to obtain direct links
            in a single batch, fill in 0 means no batch generation of direct
            links is allowed.
        trash_retention:
          type: integer
          description: >-
            The retention time in seconds of files in the trash bin, files will
            be permanently deleted after the expiration time. Changing this
            setting will not affect files already in the trash bin.
          examples:
            - 864000
      required:
        - id
        - name
        - permission
        - direct_link_batch_size
        - trash_retention
      x-apifox-orders:
        - id
        - name
        - permission
        - direct_link_batch_size
        - trash_retention
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
    Share:
      type: object
      properties:
        id:
          type: string
          description: ID of the share link.
          examples:
            - VoMFL
        name:
          type: string
          description: Name of the shared file/folder.
          examples:
            - Shared folder
        visited:
          type: integer
          description: Count of views to this share link.
          examples:
            - 776
        downloaded:
          type: integer
          description: >-
            Count of downloads to this share link. Only appliable to share links
            with a file(not folder) as source type.
          examples:
            - 0
        price:
          type: integer
          description: Price of this share link, in points.
          examples:
            - 999
        unlocked:
          type: boolean
          description: Whether this share link is accessible to current user.
        source_type:
          type: integer
          description: Type of the shared source file.
          enum:
            - 0
            - 1
          x-apifox-enum:
            - value: 0
              name: ''
              description: File
            - value: 1
              name: ''
              description: Folder
          default: 1
        owner:
          description: Owner of this share link.
          type: object
          x-apifox-refs:
            01JSV6N4KGSNM2NVP31CASMJ2W: *ref_7
          x-apifox-orders:
            - 01JSV6N4KGSNM2NVP31CASMJ2W
          properties:
            id:
              type: string
              description: ID of the user.
              examples:
                - 6JIo
            email:
              type: string
              description: Email of the user. For anonymous session, it is empty.
              nullable: true
            nickname:
              type: string
              description: Display name of the user.
              examples:
                - Johnny Zhang
              nullable: true
            created_at:
              type: string
              description: >-
                Time at which the user is created. For anonymous session, this
                value is invalid.
              format: date-time
              examples:
                - '2023-08-06T19:21:59+08:00'
            group: *ref_6
            disable_view_sync:
              type: string
              description: Whether syncing view setting to server is enabled.
              nullable: true
            share_links_in_profile:
              type: string
              description: What type of share link is visable in user's profile.
              enum:
                - '[Empty string]'
                - all_share
                - hide_share
              x-apifox-enum:
                - value: '[Empty string]'
                  name: ''
                  description: Only public share links are visable.
                - value: all_share
                  name: ''
                  description: All share links are visable.
                - value: hide_share
                  name: ''
                  description: No share links are visable.
              nullable: true
          required:
            - id
            - nickname
            - created_at
            - group
          x-apifox-ignore-properties:
            - id
            - email
            - nickname
            - created_at
            - group
            - disable_view_sync
            - share_links_in_profile
        created_at:
          type: string
          format: date-time
          description: Create time.
        expired:
          type: boolean
          description: Whether this link is already expired.
        url:
          type: string
          description: URL of the share link.
          examples:
            - http://cloudreve.org/s/VoMFL/2rje2bdj
        permission_setting:
          type: object
          properties:
            same_group:
              type: 'null'
            everyone:
              type: string
            other:
              type: 'null'
            anonymous:
              type: string
            group_explicit:
              type: object
              properties: {}
              x-apifox-orders: []
              x-apifox-ignore-properties: []
            user_explicit:
              type: object
              properties: {}
              x-apifox-orders: []
              x-apifox-ignore-properties: []
          required:
            - same_group
            - everyone
            - other
            - anonymous
            - group_explicit
            - user_explicit
          x-apifox-orders:
            - same_group
            - everyone
            - other
            - anonymous
            - group_explicit
            - user_explicit
          description: Only visable to owner. Permission setting for this share link.
          x-apifox-ignore-properties: []
        is_private:
          type: boolean
          description: Only visable to owner. Whether this link is private (with password).
          nullable: true
        password:
          type: string
          description: Only visable to owner. Password of this share.
          examples:
            - 2rje2bdj
        source_uri:
          type: string
          description: >-
            Only visable to owner, the [`File
            URI`](https://docs.cloudreve.org/api/file-uri) of the source file in
            owner's `my` filesystem.
          examples:
            - cloudreve://lpua@my/BrNJdjbgi1mvqBf7zycSCskw6ky8nle0
        share_view:
          type: boolean
          description: >-
            Only visable to owner, whether the explorer view setting is shared
            with others.
          nullable: true
        show_readme:
          type: boolean
          description: >-
            Whether client UI should automatically render and shoe `README.md`
            file. Only for share folder.
          nullable: true
        password_protected:
          type: boolean
          description: Whether this share link is private (password protected).
          nullable: true
      required:
        - id
        - unlocked
        - visited
      x-apifox-orders:
        - id
        - name
        - visited
        - downloaded
        - price
        - unlocked
        - source_type
        - owner
        - created_at
        - expired
        - url
        - permission_setting
        - is_private
        - password
        - source_uri
        - share_view
        - show_readme
        - password_protected
      description: >-
        If share link is not accessible to current user (`unlocked` is `false`),
        several fields wil be redacted.
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
  securitySchemes: {}
servers: []
security: []

```
