# List file activities

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /file/activities:
    get:
      summary: List file activities
      deprecated: false
      description: ''
      tags:
        - File
        - 'Auth: JWT Optional'
        - Pro
      parameters:
        - name: uri
          in: query
          description: '[URI](https://docs.cloudreve.org/api/file-uri) of the file.'
          required: true
          example: cloudreve://my/Luke's%20AMA
          schema:
            type: string
        - name: page_size
          in: query
          description: Page size.
          required: true
          example: 50
          schema:
            type: integer
            minimum: 10
        - name: order_direction
          in: query
          description: Order direction.
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
                description: ''
              - value: desc
                name: ''
                description: ''
            default: asc
        - name: next_page_token
          in: query
          description: >-
            Token for requesting next page. Empty value means requesting the
            first page.
          required: false
          example: eyJpZCI6IjFibFdJTyJ9
          schema:
            type: string
        - name: filter
          in: query
          description: Filter name. Use empty value to list all activities.
          required: false
          schema:
            type: string
            enum:
              - my
              - updates
              - reads
            x-apifox-enum:
              - value: my
                name: ''
                description: All activities triggered by current authenticated user.
              - value: updates
                name: ''
                description: All activities related to update operation.
              - value: reads
                name: ''
                description: All read-only related activities.
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
                  01JW0EEXD7ARE397A92RY7SKBQ: &ref_1
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data: &ref_0
                        $ref: '#/components/schemas/FileActivitiesResponse'
                    required:
                      - data
                x-apifox-orders:
                  - 01JW0EEXD7ARE397A92RY7SKBQ
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
                  activities:
                    - id: VrAoFX
                      content:
                        category: 8
                        original_name: 202206供水检测报告s.docx
                        new_name: 202206供水s检测报告s.docx
                        from: >-
                          cloudreve://ALNU6@share/202206%E4%BE%9B%E6%B0%B4%E6%A3%80%E6%B5%8B%E6%8A%A5%E5%91%8As.docx
                      created_at: '2024-05-29T14:03:49+08:00'
                      user:
                        id: bnUn
                        email: luke@skywalker.com
                        nickname: Luke Skywalker
                        avatar: file
                        created_at: '2023-08-06T19:21:59+08:00'
                    - id: 3JYYTr
                      content:
                        category: 11
                        from: >-
                          cloudreve://ALNU6@share/202206%E4%BE%9B%E6%B0%B4%E6%A3%80%E6%B5%8B%E6%8A%A5%E5%91%8As.docx
                      created_at: '2024-05-29T14:03:44+08:00'
                      user:
                        id: bnUn
                        email: luke@skywalker.com
                        nickname: Luke Skywalker
                        avatar: file
                        created_at: '2023-08-06T19:21:59+08:00'
                  pagination:
                    page: 0
                    page_size: 20
                    next_token: eyJpZCI6IjFibFdJTyJ9
                    is_cursor: true
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: File
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-300250878-run
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
    FileActivitiesResponse:
      type: object
      properties:
        activities:
          type: array
          items:
            $ref: '#/components/schemas/Activity'
        pagination:
          type: object
          x-apifox-refs:
            01JW0EK1CQ016P5MN1A05X02QT:
              $ref: '#/components/schemas/PaginationResults'
              x-apifox-overrides:
                total_items: null
          x-apifox-orders:
            - 01JW0EK1CQ016P5MN1A05X02QT
          properties:
            page:
              type: integer
              examples:
                - 1
              description: >-
                Current page starting from `0`, only applied to offset
                pagination.
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
            - page
            - page_size
            - next_token
          x-apifox-ignore-properties:
            - page
            - page_size
            - next_token
            - is_cursor
      x-apifox-orders:
        - activities
        - pagination
      required:
        - activities
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
    Activity:
      type: object
      properties:
        id:
          type: string
          examples:
            - gAynS6
          description: ID of the activity.
        content:
          $ref: '#/components/schemas/LogEntry'
          description: Content and additional props of the activity.
        created_at:
          type: string
          format: date-time
          examples:
            - '2024-05-29T14:12:47+08:00'
          description: Datetime when the activity is triggered.
        user:
          description: >-
            The user who triggered the activity (if any). `null` value indicates
            this operation is executed by system or an anonymous visitor.
          type: object
          x-apifox-refs:
            01JW0E07XA89JDQX8KXAVGACW4:
              $ref: '#/components/schemas/User'
              x-apifox-overrides:
                anonymous: null
                group:
                  type: object
                  x-apifox-refs: &ref_2
                    01JW0E0DV2FDV4SDCCARGCB116: &ref_4
                      $ref: '#/components/schemas/Group'
                      x-apifox-overrides:
                        permission: null
                        direct_link_batch_size: null
                        trash_retention: null
                  x-apifox-orders: &ref_3
                    - 01JW0E0DV2FDV4SDCCARGCB116
                  properties: {}
                status: null
                preferred_theme: null
                credit: null
                language: null
                disable_view_sync: null
              required:
                - group
          x-apifox-orders:
            - 01JW0E07XA89JDQX8KXAVGACW4
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
              x-apifox-refs: *ref_2
              x-apifox-orders: *ref_3
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
            - share_links_in_profile
          nullable: true
        version_id:
          type: string
          examples:
            - zBmHe
          description: ID of the version blob correlated to this activity (if any).
          nullable: true
      x-apifox-orders:
        - id
        - content
        - created_at
        - user
        - version_id
      required:
        - id
        - created_at
        - content
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
        group: *ref_4
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
    LogEntry:
      type: object
      properties:
        category:
          type: integer
          description: >-
            Category of this log. Definition can be found in
            [`explorer.ts`](https://github.com/cloudreve/frontend/blob/master/src/api/explorer.ts#L20).
          examples:
            - 21
        exts:
          type: object
          properties: {}
          x-apifox-orders: []
          additionalProperties: true
          description: Extra key-value props.
          x-apifox-ignore-properties: []
        original_name:
          type: string
          description: Original name of the file in renaming operation.
          examples:
            - file.txt
          nullable: true
        new_name:
          type: string
          description: New name of the file in renaming operation.
          examples:
            - file_new.txt
          nullable: true
        from:
          type: string
          description: URI of the source file.
          examples:
            - cloudreve://my/text.docx
          nullable: true
        to:
          type: string
          description: URI of the destination file.
          examples:
            - cloudreve://s4Fd5@share/text.docx
          nullable: true
        entity_create_time:
          type: string
          description: Entity creation datetime.
          format: date-time
          examples:
            - '2025-05-23T11:15:44+08:00'
          nullable: true
        storage_policy_id:
          type: string
          description: ID of the correlated storage policy.
          examples:
            - zDF3
          nullable: true
        storage_policy:
          type: string
          description: Name of the correlated storage policy.
          examples:
            - Default storage policy
          nullable: true
      x-apifox-orders:
        - category
        - exts
        - original_name
        - new_name
        - from
        - to
        - entity_create_time
        - storage_policy_id
        - storage_policy
      required:
        - category
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
  securitySchemes: {}
servers: []
security: []

```
