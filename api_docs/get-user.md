# Get user

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /user/info/{user_id}:
    get:
      summary: Get user
      deprecated: false
      description: >-
        Get user by ID. Authorization is optional, but `email` field will be
        redacted for anonymous request.
      tags:
        - User
        - 'Auth: JWT Optional'
      parameters:
        - name: user_id
          in: path
          description: User ID.
          required: true
          example: Nru9
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
                  01JSS0VPZH9RK7KXKV3PGZV1XS: &ref_4
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data:
                        description: Response content
                        type: object
                        x-apifox-refs: &ref_0
                          01K21DN74PADF2Y2KMT0YBTHA8:
                            $ref: '#/components/schemas/User'
                            x-apifox-overrides:
                              anonymous: null
                              group:
                                type: object
                                x-apifox-refs: &ref_2
                                  01K21DNGC6MS0B95QNFS90W98F: &ref_5
                                    $ref: '#/components/schemas/Group'
                                    x-apifox-overrides:
                                      permission: null
                                      direct_link_batch_size: null
                                      trash_retention: null
                                x-apifox-orders: &ref_3
                                  - 01K21DNGC6MS0B95QNFS90W98F
                                properties: {}
                              status: null
                              preferred_theme: null
                              credit: null
                              language: null
                              disable_view_sync: null
                            required:
                              - group
                        x-apifox-orders: &ref_1
                          - 01K21DN74PADF2Y2KMT0YBTHA8
                        properties: {}
                    required:
                      - data
                x-apifox-orders:
                  - 01JSS0VPZH9RK7KXKV3PGZV1XS
                properties:
                  data:
                    description: Response content
                    type: object
                    x-apifox-refs: *ref_0
                    x-apifox-orders: *ref_1
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
                          Time at which the user is created. For anonymous
                          session, this value is invalid.
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
                          Source type of the profile picture. Empty value
                          indicates no profile picture.
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
                data:
                  id: 6JIo
                  email: Estevan92@gmail.com
                  nickname: Johnny Zhang
                  created_at: '2023-08-06T19:21:59+08:00'
                  group:
                    id: 1AI8
                    name: Admin
                code: 0
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: User
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-289548981-run
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
          additionalProperties: *ref_4
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
        group: *ref_5
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
  securitySchemes: {}
servers: []
security: []

```
