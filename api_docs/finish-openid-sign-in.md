# Finish OpenID sign-in

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /session/openid:
    post:
      summary: Finish OpenID sign-in
      deprecated: false
      description: >-
        After user sign in via the URL obtained from [Prepare OpenID
        Sign-in](https://cloudrevev4.apifox.cn/prepare-openid-sign-in-289505034e0.md),
        request this to notify Cloudreve the result.
      tags:
        - Session/OpenID
        - 'Auth: None'
        - Pro
      parameters: []
      requestBody:
        content:
          application/json:
            schema:
              type: object
              properties:
                code:
                  type: string
                  description: >-
                    OAuth `code`, can be found in the redirected URL query
                    string after user sign in complete.
                  examples:
                    - uGPCFrT0hZYy4PfLloRyHhvejdkma95l
                session_id:
                  type: string
                  description: >-
                    Sign in session ID, can be found in the redirected URL query
                    string `state`.
                  format: uuid
                  examples:
                    - 1728791b-4e6a-4ac5-adf5-fa717a6b0919
                provider_id:
                  type: integer
                  description: OpenID provider type ID.
                  examples:
                    - 0
              x-apifox-orders:
                - code
                - session_id
                - provider_id
              required:
                - code
                - provider_id
                - session_id
              x-apifox-ignore-properties: []
            examples: {}
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JSRHSE3G1ZFA11Z6KE5MPT2B: &ref_1
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data: &ref_0
                        $ref: '#/components/schemas/LoginResponse'
                    required:
                      - data
                x-apifox-orders:
                  - 01JSRHSE3G1ZFA11Z6KE5MPT2B
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
                data:
                  user:
                    id: 6JIo
                    email: Cassidy.Hagenes@gmail.com
                    nickname: Johnny Zhang
                    created_at: '2023-08-06T19:21:59+08:00'
                    anonymous: true
                    group:
                      id: 1AI8
                      name: Admin
                      permission: /f8B
                      direct_link_batch_size: 10
                      trash_retention: 864000
                    status: active
                    avatar: file
                    preferred_theme: '#131313'
                    credit: 98
                    language: en-US
                  token:
                    access_token: >-
                      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwic3ViIjoibHB1YSIsImV4cCI6MTc0NTY1NDMwOCwibmJmIjoxNzQ1NjUwNzA4fQ.n2z8AY-A9GC-CymOsLSA8ruV3vYgNJd27MXRcm4bVu8
                    access_expires: '2025-04-26T15:58:28.456762+08:00'
                    refresh_token: >-
                      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsInN1YiI6ImxwdWEiLCJleHAiOjE3NjEyMDI3MDgsIm5iZiI6MTc0NTY1MDcwOCwic3RhdGVfaGFzaCI6Ikk1OCtSbmsrTHVpTkxBbjBqek9KNG45OUorV3hqL0pzbjJoRVYrUXBhelE9In0.KoechX6_A2NeVcfFAlHkRLk572hjPKepP0XWfbvBxZY
                    refresh_expires: '2025-10-23T14:58:28.456762+08:00'
                code: 0
                msg: ''
          headers: {}
          x-apifox-name: Success - Sign in account
        x-200:Success - Link existing account:
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JSRHX3FM2S5B28H5TS810D5G: *ref_1
                x-apifox-orders:
                  - 01JSRHX3FM2S5B28H5TS810D5G
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
                msg: ''
          headers: {}
          x-apifox-name: Success - Link existing account
      security: []
      x-apifox-folder: Session/OpenID
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-289511003-run
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
    LoginResponse:
      type: object
      properties:
        user:
          $ref: '#/components/schemas/User'
        token:
          $ref: '#/components/schemas/Token'
      x-apifox-orders:
        - user
        - token
      required:
        - user
        - token
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
    Token:
      type: object
      properties:
        access_token:
          type: string
          examples:
            - >-
              eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwic3ViIjoibHB1YSIsImV4cCI6MTc0NTY1NDMwOCwibmJmIjoxNzQ1NjUwNzA4fQ.n2z8AY-A9GC-CymOsLSA8ruV3vYgNJd27MXRcm4bVu8
          description: Access token that can be used to request API on user's behalf.
        access_expires:
          type: string
          format: date-time
          examples:
            - '2025-04-26T15:58:28.456762+08:00'
          description: Expiration date of the access token.
        refresh_token:
          type: string
          examples:
            - >-
              eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsInN1YiI6ImxwdWEiLCJleHAiOjE3NjEyMDI3MDgsIm5iZiI6MTc0NTY1MDcwOCwic3RhdGVfaGFzaCI6Ikk1OCtSbmsrTHVpTkxBbjBqek9KNG45OUorV3hqL0pzbjJoRVYrUXBhelE9In0.KoechX6_A2NeVcfFAlHkRLk572hjPKepP0XWfbvBxZY
          description: >-
            Refresh token that can be used to refresh a new pair of access token
            and refresh token.
        refresh_expires:
          type: string
          format: date-time
          title: ''
          examples:
            - '2025-10-23T14:58:28.456762+08:00'
          description: Expiration date of the refresh token.
      x-apifox-orders:
        - access_token
        - access_expires
        - refresh_token
        - refresh_expires
      required:
        - access_token
        - refresh_expires
        - refresh_token
        - access_expires
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
        group:
          $ref: '#/components/schemas/Group'
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
