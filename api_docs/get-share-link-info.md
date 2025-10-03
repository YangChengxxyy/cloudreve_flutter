# Get share link info

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /share/info/{id}:
    get:
      summary: Get share link info
      deprecated: false
      description: Get share link info from ID.
      tags:
        - Share
        - 'Auth: JWT Optional'
      parameters:
        - name: id
          in: path
          description: >-
            ID of the share link. Can be parsed from `Username` part of the
            [URI](https://docs.cloudreve.org/api/file-uri) of the shared file or
            the short link created in [Create share
            link](./create-share-link-306853462e0)
          required: true
          example: g2guA
          schema:
            type: string
        - name: password
          in: query
          description: >-
            Password of the share link for private share.  Can be parsed from
            `Password` part of the
            [URI](https://docs.cloudreve.org/api/file-uri) of the shared file or
            the short link created in [Create share
            link](./create-share-link-306853462e0)
          required: false
          example: gcqzfaze
          schema:
            type: string
        - name: count_views
          in: query
          description: >-
            If set to `true`, the visited counter of the share link will be
            increased.
          required: false
          example: 'true'
          schema:
            type: boolean
        - name: owner_extended
          in: query
          description: >-
            If set to `true` and the requestor is the owner of the share,
            additional fields like `source_uri` will be available in the
            response.
          required: false
          example: 'true'
          schema:
            type: boolean
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
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JXCFTRXJTT6SJ1V7DFFQ6XDZ: &ref_2
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      data:
                        description: >-
                          Response content. In some error type, e.g. lock
                          conflicting errors, this field wil present details of
                          the error, e.g. who is locking the current file.
                        anyOf:
                          - &ref_0
                            description: >-
                              Response content. In some error type, e.g. lock
                              conflicting errors, this field wil present details
                              of the error, e.g. who is locking the current
                              file.
                            $ref: '#/components/schemas/Share'
                          - &ref_1
                            type: 'null'
                      aggregated_error: null
                x-apifox-orders:
                  - 01JXCFTRXJTT6SJ1V7DFFQ6XDZ
                properties:
                  data:
                    description: >-
                      Response content. In some error type, e.g. lock
                      conflicting errors, this field wil present details of the
                      error, e.g. who is locking the current file.
                    anyOf:
                      - *ref_0
                      - *ref_1
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
                  - data
                  - code
                  - msg
                  - error
                  - correlation_id
              example:
                code: 0
                data:
                  id: g2guA
                  name: Inspirations
                  visited: 0
                  price: 20
                  expires: '2025-06-17T16:16:39+08:00'
                  unlocked: true
                  source_type: 1
                  owner:
                    id: bnUn
                    email: luke@skywalker.com
                    nickname: Luke Skywalker
                    avatar: file
                    created_at: '2023-08-06T19:21:59+08:00'
                  created_at: '2025-06-10T16:16:39+08:00'
                  expired: false
                  url: http://localhost:5173/s/g2guA/gcqzfaze
                  permission_setting:
                    same_group: null
                    everyone: AQ==
                    other: null
                    anonymous: BQ==
                    group_explicit: {}
                    user_explicit: {}
                  is_private: true
                  password: gcqzfaze
                  share_view: true
                  source_uri: cloudreve://bnUn@my/Inspirations
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: Share
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-306869986-run
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
            group: &ref_3
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
        group: *ref_3
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
