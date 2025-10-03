# Sign up

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /user:
    post:
      summary: Sign up
      deprecated: false
      description: 'Create a new account from given email and password. '
      tags:
        - User
        - 'Auth: None'
      parameters: []
      requestBody:
        content:
          application/json:
            schema:
              type: object
              properties:
                email:
                  type: string
                  format: email
                  examples:
                    - example@cloudreve.org
                  description: Account email.
                password:
                  type: string
                  minLength: 6
                  maxLength: 64
                  examples:
                    - P@ssw0rd
                  description: Account password.
                language:
                  type: string
                  examples:
                    - en-US
                  description: >-
                    Primary UI and Email language code, should be a registered
                    language in
                    [i18n.ts](https://github.com/cloudreve/frontend/blob/master/src/i18n.ts#L44).
                captcha:
                  type: string
                  description: >-
                    User input value of the graphical CAPTCHA. Required if
                    graphic CAPTCHA enabled for current action.
                  examples:
                    - z3ds
                  nullable: true
                ticket:
                  type: string
                  description: >-
                    Ticket/Token of the CAPTCHA. Required if CAPTCHA is enabled
                    for current action. Can be obtained from [Get
                    CAPTCHA](https://cloudrevev4.apifox.cn/get-captcha-289470260e0.md).
                  examples:
                    - 4qXv7KmbYajJ0yFDKcmJ
                  nullable: true
              x-apifox-orders:
                - email
                - password
                - language
                - 01JSRKZD2J12J81K5PZH6NGF5D
              required:
                - email
                - password
              x-apifox-refs:
                01JSRKZD2J12J81K5PZH6NGF5D:
                  $ref: '#/components/schemas/CaptchaFields'
              x-apifox-ignore-properties:
                - captcha
                - ticket
            examples: {}
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JSRKXQZM4WY3M5M3Y9F1TBHM: &ref_1
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data: &ref_0
                        $ref: '#/components/schemas/User'
                    required:
                      - data
                x-apifox-orders:
                  - 01JSRKXQZM4WY3M5M3Y9F1TBHM
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
                  id: 6JIo
                  email: Grover30@hotmail.com
                  nickname: Johnny Zhang
                  created_at: '2023-08-06T19:21:59+08:00'
                  anonymous: null
                  group:
                    id: 1AI8
                    name: Admin
                    permission: /f8B
                    direct_link_batch_size: 10
                    trash_retention: 864000
                  status: inactive
                  avatar: file
                  preferred_theme: '#131313'
                  credit: 8
                  language: en-US
                code: 0
                msg: ''
          headers: {}
          x-apifox-name: Success
        x-200:Email activation required:
          description: >-
            This response is returned if email activication is required to
            finish sign in.
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JSRM3F7HB3YQ5P7PE605FRG6: *ref_1
                x-apifox-orders:
                  - 01JSRM3F7HB3YQ5P7PE605FRG6
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
                code: 203
                msg: ''
          headers: {}
          x-apifox-name: Email activation required
      security: []
      x-apifox-folder: User
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-289517607-run
components:
  schemas:
    CaptchaFields:
      type: object
      properties:
        captcha:
          type: string
          description: >-
            User input value of the graphical CAPTCHA. Required if graphic
            CAPTCHA enabled for current action.
          examples:
            - z3ds
          nullable: true
        ticket:
          type: string
          description: >-
            Ticket/Token of the CAPTCHA. Required if CAPTCHA is enabled for
            current action. Can be obtained from [Get
            CAPTCHA](https://cloudrevev4.apifox.cn/get-captcha-289470260e0.md).
          examples:
            - 4qXv7KmbYajJ0yFDKcmJ
          nullable: true
      x-apifox-orders:
        - captcha
        - ticket
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
