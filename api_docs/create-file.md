# Create file

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /file/create:
    post:
      summary: Create file
      deprecated: false
      description: >-
        Create a new file with given URI and props. If ancestor folders does not
        existed for given `uri`, they will be created automatically.
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
                    [URI](https://docs.cloudreve.org/api/file-uri) of the file
                    to be created.
                  examples:
                    - cloudreve://my/Inspirations/new.txt
                type:
                  type: string
                  enum:
                    - file
                    - folder
                  x-apifox-enum:
                    - value: file
                      name: ''
                      description: ''
                    - value: folder
                      name: ''
                      description: ''
                  description: Type of the new file.
                metadata:
                  type: object
                  properties: {}
                  x-apifox-orders: []
                  additionalProperties:
                    type: string
                  description: Key-value map of metadata for the new file.
                  x-apifox-ignore-properties: []
                  nullable: true
                err_on_conflict:
                  type: boolean
                  description: >-
                    Define the behavior when there's conflict (object already
                    existed) for given `uri`:


                    * If `true`, an error will be returned;

                    * If `false`, no mutation is performed, the existing file in
                    `uri` will be returned.
              x-apifox-orders:
                - uri
                - type
                - metadata
                - err_on_conflict
              required:
                - uri
                - type
              x-apifox-ignore-properties: []
            examples:
              '1':
                value:
                  type: file
                  uri: cloudreve://my/Inspirations/new.txt
                  err_on_conflict: true
                summary: Create new empty file
              '2':
                value:
                  type: folder
                  uri: cloudreve://my/Inspirations/Q3
                  metadata:
                    sys:shared_redirect: cloudreve://EBuq:745@share
                    sys:shared_owner: lpua
                  err_on_conflict: true
                summary: Save share link to a shortcut
              '3':
                value:
                  type: folder
                  uri: cloudreve://EBuq:745@share/New%20folder
                  err_on_conflict: true
                summary: Create a new folder
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JW0FG7XGR77VYK05VZ9CSZCV: &ref_2
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data:
                        description: Response content
                        type: object
                        x-apifox-refs: &ref_0
                          01K21EZ9PFRWASQBX5MTARMYGY:
                            $ref: '#/components/schemas/FileResponse'
                            x-apifox-overrides:
                              folder_summary: null
                              extended_info: null
                              metadata: null
                        x-apifox-orders: &ref_1
                          - 01K21EZ9PFRWASQBX5MTARMYGY
                        properties: {}
                    required:
                      - data
                x-apifox-orders:
                  - 01JW0FG7XGR77VYK05VZ9CSZCV
                properties:
                  data:
                    description: Response content
                    type: object
                    x-apifox-refs: *ref_0
                    x-apifox-orders: *ref_1
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


                          It might not be expected display name. For files under
                          trash bin, this field is a non-readable UUID. The
                          expected display name should be retrieved from
                          `metadata` with name `sys:restore_uri`, which can be
                          parsed as a
                          [URI](https://docs.cloudreve.org/api/file-uri).
                      permission:
                        type: string
                        description: >-
                          [Boolset](https://docs.cloudreve.org/api/boolset)
                          encoded permissions granted by current authenticated
                          user. For `null`, all permissions are granted.

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
                        description: >-
                          Size of the file, also the size of current primary
                          version blob.
                      path:
                        type: string
                        examples:
                          - >-
                            cloudreve://my/%E9%97%A8%E7%A5%A8/btn_google_signin_dark_normal_web%402x.png
                        description: >-
                          [URI](https://docs.cloudreve.org/api/file-uri) of this
                          file.
                      shared:
                        type: boolean
                        description: Whether this file has share links.
                      capability:
                        type: string
                        description: >-
                          [Boolset](https://docs.cloudreve.org/api/boolset)
                          encoded set of capabilities supported.
                        examples:
                          - 39/9
                        nullable: true
                      owned:
                        type: boolean
                        description: >-
                          Whether this file is owned by current authenticated
                          user.
                      primary_entity:
                        type: string
                        description: ID of the primary version blob.
                        nullable: true
                    required:
                      - type
                      - id
                      - name
                      - created_at
                      - updated_at
                      - size
                      - path
                      - owned
                    x-apifox-ignore-properties:
                      - type
                      - id
                      - name
                      - permission
                      - created_at
                      - updated_at
                      - size
                      - path
                      - shared
                      - capability
                      - owned
                      - primary_entity
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
                  type: 1
                  id: d08Wy1Hx
                  name: Q3
                  permission: null
                  created_at: '2025-05-24T14:24:27+08:00'
                  updated_at: '2025-05-24T14:24:27+08:00'
                  size: 0
                  metadata: null
                  path: cloudreve://my/Inspirations/Q3
                  capability: 39/9
                  owned: true
                  primary_entity: zOie
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: File
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-300253321-run
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
            - &ref_3
              $ref: '#/components/schemas/StoragePolicy'
              description: >-
                Preferred storage policy of this file. Note that it might not be
                the one used by this file's blobs.
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
  securitySchemes: {}
servers: []
security: []

```
