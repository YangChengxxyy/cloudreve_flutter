# Get preferences

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /user/setting:
    get:
      summary: Get preferences
      deprecated: false
      description: ''
      tags:
        - User/Setting
        - 'Auth: JWT Required'
      parameters: []
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JXKKR699A0KTQH17K5Z0TR9D: &ref_29
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      data:
                        type: object
                        properties:
                          group_expires: &ref_0
                            type: string
                            format: date-time
                            description: >-
                              Datetime when the cuurent membership expired.
                              Empty value means no active membership. Only
                              presented in Pro edition.
                            nullable: true
                          open_id:
                            type: array
                            items:
                              type: object
                              properties:
                                provider: &ref_1
                                  type: integer
                                  description: Provider type.
                                  enum:
                                    - 0
                                    - 1
                                    - 2
                                  x-apifox-enum:
                                    - value: 0
                                      name: ''
                                      description: Logto
                                    - value: 1
                                      name: ''
                                      description: Tencent QQ
                                    - value: 2
                                      name: ''
                                      description: OIDC
                                  examples:
                                    - 1
                                linked_at: &ref_2
                                  type: string
                                  description: Datetime when the provider is linked.
                                  examples:
                                    - '2025-04-10T20:04:19+08:00'
                              x-apifox-orders: &ref_3
                                - provider
                                - linked_at
                              required:
                                - provider
                                - linked_at
                            description: >-
                              List of linked external identity providers. Only
                              presented in Pro edition.
                            nullable: true
                          version_retention_enabled: &ref_4
                            type: boolean
                            description: Whether file version retention is enabled.
                          version_retention_ext:
                            type: array
                            items: &ref_5
                              type: string
                            description: >-
                              List of file extensions enabling file version
                              retention. For null or empty list, all extensions
                              are enabled.
                            nullable: true
                          version_retention_max: &ref_6
                            type: integer
                            description: >-
                              Max preserved version. For `0` or null, all
                              version will be preserved.
                            nullable: true
                          passwordless: &ref_7
                            type: boolean
                            description: >-
                              Whether this account is passwordless (sign in via
                              3rd party identity provider).
                          two_fa_enabled: &ref_8
                            type: boolean
                            description: Whether 2FA is enabled.
                          passkeys:
                            type: array
                            items: &ref_9
                              $ref: '#/components/schemas/Passkey'
                            description: List of registered passkeys.
                            nullable: true
                          login_activity:
                            type: array
                            items:
                              type: object
                              properties:
                                created_at: &ref_10
                                  type: string
                                  format: date-time
                                  examples:
                                    - '2025-06-12T09:24:19+08:00'
                                  description: When the login activity initiated.
                                ip: &ref_11
                                  type: string
                                  examples:
                                    - '::1'
                                  description: IP address of the client.
                                browser: &ref_12
                                  type: string
                                  examples:
                                    - Safari
                                  description: Name of the browser, parsed from user agent.
                                device: &ref_13
                                  type: string
                                  examples:
                                    - Mac
                                  description: Name of the device, parsed from user agent.
                                os: &ref_14
                                  type: string
                                  examples:
                                    - Mac OS X
                                  description: >-
                                    Name of the operating system, parsed from
                                    user agent.
                                login_with: &ref_15
                                  type: string
                                  enum:
                                    - passkey
                                    - openid
                                  x-apifox-enum:
                                    - value: passkey
                                      name: ''
                                      description: ''
                                    - value: openid
                                      name: ''
                                      description: ''
                                  description: >-
                                    Method for sign in. Empty string means sign
                                    in using password.
                                open_id_provider: &ref_16
                                  type: integer
                                  description: >-
                                    Type of the 3rd party identity provider.
                                    Only valid if `login_with` is `openid`.
                                success: &ref_17
                                  type: boolean
                                  description: Whether this sign in succeed.
                                webdav: &ref_18
                                  type: boolean
                                  description: >-
                                    Whether this request is from WebDAV client.
                                    Currently we only record failed sign in
                                    activities for WebDAV requests.
                              x-apifox-orders: &ref_19
                                - created_at
                                - ip
                                - browser
                                - device
                                - os
                                - login_with
                                - open_id_provider
                                - success
                                - webdav
                              required:
                                - created_at
                                - ip
                                - browser
                                - device
                                - os
                                - login_with
                                - open_id_provider
                                - success
                                - webdav
                            description: >-
                              List of recent login activities. Only presented in
                              Pro edition.
                            nullable: true
                          storage_packs:
                            type: array
                            items:
                              type: object
                              properties:
                                name: &ref_20
                                  type: string
                                  examples:
                                    - Unlimited Storage
                                  description: Name of the storage pack.
                                active_since: &ref_21
                                  type: string
                                  description: When the storage pack is activated.
                                  format: date-time
                                  examples:
                                    - '2025-03-20T17:52:20+08:00'
                                expire_at: &ref_22
                                  type: string
                                  format: date-time
                                  examples:
                                    - '2026-03-20T17:52:20+08:00'
                                  description: When the storage pack will be expired.
                                size: &ref_23
                                  type: integer
                                  examples:
                                    - 214748364800
                                  description: >-
                                    Extra capacity included in this pack, in
                                    bytes.
                              x-apifox-orders: &ref_24
                                - name
                                - active_since
                                - expire_at
                                - size
                              required:
                                - name
                                - active_since
                                - expire_at
                                - size
                            description: List of available extra storage packs
                          credit: &ref_25
                            type: integer
                            examples:
                              - 24600
                            description: Available points balance.
                          disable_view_sync: &ref_26
                            type: boolean
                            description: Whether explorer view setting sync is disabled.
                          share_links_in_profile: &ref_27
                            type: string
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
                            description: >-
                              What type of share link is visable in user's
                              profile.
                            nullable: true
                        x-apifox-orders: &ref_28
                          - group_expires
                          - open_id
                          - version_retention_enabled
                          - version_retention_ext
                          - version_retention_max
                          - passwordless
                          - two_fa_enabled
                          - passkeys
                          - login_activity
                          - storage_packs
                          - credit
                          - disable_view_sync
                          - share_links_in_profile
                        description: >-
                          Response content. In some error type, e.g. lock
                          conflicting errors, this field wil present details of
                          the error, e.g. who is locking the current file.
                        required:
                          - version_retention_enabled
                          - passwordless
                          - two_fa_enabled
                          - storage_packs
                          - credit
                          - disable_view_sync
                        nullable: true
                      aggregated_error: null
                      code: null
                x-apifox-orders:
                  - 01JXKKR699A0KTQH17K5Z0TR9D
                properties:
                  data:
                    type: object
                    properties:
                      group_expires: *ref_0
                      open_id:
                        type: array
                        items:
                          type: object
                          properties:
                            provider: *ref_1
                            linked_at: *ref_2
                          x-apifox-orders: *ref_3
                          required:
                            - provider
                            - linked_at
                          x-apifox-ignore-properties: []
                        description: >-
                          List of linked external identity providers. Only
                          presented in Pro edition.
                        nullable: true
                      version_retention_enabled: *ref_4
                      version_retention_ext:
                        type: array
                        items: *ref_5
                        description: >-
                          List of file extensions enabling file version
                          retention. For null or empty list, all extensions are
                          enabled.
                        nullable: true
                      version_retention_max: *ref_6
                      passwordless: *ref_7
                      two_fa_enabled: *ref_8
                      passkeys:
                        type: array
                        items: *ref_9
                        description: List of registered passkeys.
                        nullable: true
                      login_activity:
                        type: array
                        items:
                          type: object
                          properties:
                            created_at: *ref_10
                            ip: *ref_11
                            browser: *ref_12
                            device: *ref_13
                            os: *ref_14
                            login_with: *ref_15
                            open_id_provider: *ref_16
                            success: *ref_17
                            webdav: *ref_18
                          x-apifox-orders: *ref_19
                          required:
                            - created_at
                            - ip
                            - browser
                            - device
                            - os
                            - login_with
                            - open_id_provider
                            - success
                            - webdav
                          x-apifox-ignore-properties: []
                        description: >-
                          List of recent login activities. Only presented in Pro
                          edition.
                        nullable: true
                      storage_packs:
                        type: array
                        items:
                          type: object
                          properties:
                            name: *ref_20
                            active_since: *ref_21
                            expire_at: *ref_22
                            size: *ref_23
                          x-apifox-orders: *ref_24
                          required:
                            - name
                            - active_since
                            - expire_at
                            - size
                          x-apifox-ignore-properties: []
                        description: List of available extra storage packs
                      credit: *ref_25
                      disable_view_sync: *ref_26
                      share_links_in_profile: *ref_27
                    x-apifox-orders: *ref_28
                    description: >-
                      Response content. In some error type, e.g. lock
                      conflicting errors, this field wil present details of the
                      error, e.g. who is locking the current file.
                    required:
                      - version_retention_enabled
                      - passwordless
                      - two_fa_enabled
                      - storage_packs
                      - credit
                      - disable_view_sync
                    x-apifox-ignore-properties: []
                    nullable: true
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
                x-apifox-ignore-properties:
                  - data
                  - msg
                  - error
                  - correlation_id
              example:
                code: 0
                data:
                  open_id:
                    - provider: 0
                      linked_at: '2025-04-10T20:04:19+08:00'
                  version_retention_enabled: true
                  version_retention_max: 5
                  passwordless: false
                  two_fa_enabled: false
                  passkeys:
                    - id: oQK4yEBXSeONnJJLN+GMkA==
                      name: Chrome on Mac OS X
                      used_at: '2025-05-23T16:43:29+08:00'
                      created_at: '2025-05-23T16:43:10+08:00'
                  login_activity:
                    - created_at: '2025-06-12T09:24:19+08:00'
                      ip: '::1'
                      browser: Safari
                      device: Mac
                      os: Mac OS X
                      login_with: ''
                      open_id_provider: 0
                      success: true
                      webdav: false
                    - created_at: '2025-04-01T16:46:16+08:00'
                      ip: '::1'
                      browser: Chrome
                      device: Mac
                      os: Mac OS X
                      login_with: ''
                      open_id_provider: 0
                      success: false
                      webdav: false
                  storage_packs:
                    - name: Unlimited Storage
                      active_since: '2025-03-20T17:52:20+08:00'
                      expire_at: '2026-03-20T17:52:20+08:00'
                      size: 214748364800
                  credit: 24600
                  disable_view_sync: false
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: User/Setting
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-308319497-run
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
          additionalProperties: *ref_29
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
    Passkey:
      type: object
      properties:
        id:
          type: string
          description: ID of the passkey.
          examples:
            - 7urNE/WTQSGqA06D0w+1Xw==
        name:
          type: string
          examples:
            - Chrome on Mac OS X
          description: Name of the passkey platform.
        used_at:
          type: string
          description: Datetime when the passkey is lastly used.
          format: date-time
          examples:
            - '2025-06-13T10:43:09.929001+08:00'
          nullable: true
        created_at:
          type: string
          format: date-time
          examples:
            - '2025-06-13T10:43:09.929001+08:00'
          description: Datetime when the passkey is created.
      x-apifox-orders:
        - id
        - name
        - used_at
        - created_at
      required:
        - id
        - name
        - created_at
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
  securitySchemes: {}
servers: []
security: []

```
