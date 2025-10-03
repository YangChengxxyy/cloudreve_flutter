# List user's share links

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /user/shares/{user-id}:
    get:
      summary: List user's share links
      deprecated: false
      description: List public share links created by the given user.
      tags:
        - User
        - 'Auth: None'
      parameters:
        - name: user-id
          in: path
          description: ID of the user.
          required: true
          example: lpua
          schema:
            type: string
        - name: page_size
          in: query
          description: Page size.
          required: true
          example: 10
          schema:
            type: integer
            minimum: 10
            maximum: 100
        - name: order_by
          in: query
          description: Field name for ordering.
          required: false
          schema:
            type: string
            enum:
              - views
              - downloads
              - price
              - remain_downloads
              - id
            x-apifox-enum:
              - value: views
                name: ''
                description: View count.
              - value: downloads
                name: ''
                description: Download counts.
              - value: price
                name: ''
                description: Price in points.
              - value: remain_downloads
                name: ''
                description: Remain download count for auto-expired shares.
              - value: id
                name: ''
                description: Date of creation.
            default: id
        - name: order_direction
          in: query
          description: ''
          required: false
          example: asc
          schema:
            type: string
            enum:
              - asc
              - desc
            x-apifox-enum:
              - value: asc
                name: ''
                description: Ascending (a-z).
              - value: desc
                name: ''
                description: Descending (z-a).
            default: asc
        - name: next_page_token
          in: query
          description: >-
            Token for requesting next page. Empty value means requesting the
            first page.
          required: false
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
                  01JSV74XDS0B9CPHC23K69574V: &ref_1
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data: &ref_0
                        $ref: '#/components/schemas/ListShareResponse'
                    required:
                      - data
                x-apifox-orders:
                  - 01JSV74XDS0B9CPHC23K69574V
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
                  shares:
                    - id: VoMFL
                      name: BrNJdjbgi1mvqBf7zycSCskw6ky8nle0
                      visited: 1
                      unlocked: true
                      source_type: 1
                      owner:
                        id: lpua
                        email: admin@cloudreve.org
                        nickname: Aaron Liu2
                        avatar: file
                        created_at: '2023-08-06T19:21:59+08:00'
                      created_at: '2025-04-27T16:12:13+08:00'
                      expired: false
                      url: http://localhost:5173/s/VoMFL/2rje2bdj
                      permission_setting:
                        same_group: null
                        everyone: AQ==
                        other: null
                        anonymous: AQ==
                        group_explicit: {}
                        user_explicit: {}
                      is_private: true
                      password: 2rje2bdj
                    - id: KDVIn
                      name: 使用协议.txt
                      visited: 6
                      downloaded: 2
                      price: 1000
                      unlocked: true
                      source_type: 0
                      owner:
                        id: lpua
                        email: admin@cloudreve.org
                        nickname: Aaron Liu2
                        avatar: file
                        created_at: '2023-08-06T19:21:59+08:00'
                      created_at: '2025-04-22T17:12:52+08:00'
                      expired: false
                      url: http://localhost:5173/s/KDVIn
                      permission_setting:
                        same_group: null
                        everyone: AQ==
                        other: null
                        anonymous: AQ==
                        group_explicit: {}
                        user_explicit: {}
                  pagination:
                    page: 0
                    page_size: 50
                    is_cursor: true
                    next_token: eyJpZCI6Im1LTmxTRCJ9
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: User
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-289873723-run
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
    ListShareResponse:
      type: object
      properties:
        shares:
          type: array
          items:
            $ref: '#/components/schemas/Share'
          description: List of share links.
        pagination:
          description: Pagination propertities.
          type: object
          x-apifox-refs:
            01JSV74AF8JSMG4NEH7P539QHM:
              $ref: '#/components/schemas/PaginationResults'
              x-apifox-overrides:
                page: null
                total_items: null
          x-apifox-orders:
            - 01JSV74AF8JSMG4NEH7P539QHM
          properties:
            page_size:
              type: integer
              examples:
                - 50
              description: Maximum items included in one page.
            next_token:
              type: string
              examples:
                - eyJpZCI6Inh4cUR1QSJ9
              description: Token used to request the next page in cursor pagination.
            is_cursor:
              type: boolean
              description: Whether the response is using cursor pagination.
          required:
            - page_size
            - next_token
          x-apifox-ignore-properties:
            - page_size
            - next_token
            - is_cursor
      x-apifox-orders:
        - shares
        - pagination
      required:
        - shares
        - pagination
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
            01JSV6N4KGSNM2NVP31CASMJ2W:
              $ref: '#/components/schemas/User'
              x-apifox-overrides:
                anonymous: null
                status: null
                avatar: null
                preferred_theme: null
                credit: null
                language: null
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
            group: &ref_2
              $ref: '#/components/schemas/Group'
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
        group: *ref_2
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
  securitySchemes: {}
servers: []
security: []

```
