# Update preference setting

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /user/setting:
    patch:
      summary: Update preference setting
      deprecated: false
      description: Only non-null fields in request body will be updated.
      tags:
        - User/Setting
        - 'Auth: JWT Required'
      parameters: []
      requestBody:
        content:
          application/json:
            schema:
              type: object
              properties:
                nick:
                  type: string
                  description: Display name.
                  minLength: 1
                  maxLength: 255
                  examples:
                    - Aaron Liu
                  nullable: true
                group_expires:
                  type: boolean
                  description: >-
                    Set this to `true` to manually cancel membership before
                    expiration. Only appliable to Pro edition.
                  nullable: true
                language:
                  type: string
                  description: Preferred UI and Email language.
                  examples:
                    - zh-CN
                  nullable: true
                preferred_theme:
                  type: string
                  description: >-
                    Set preferred theme color. Available options can be get from
                    [Get site settings](./get-site-settings-289489676e0).
                  examples:
                    - '#1976d2'
                  nullable: true
                version_retention_enabled:
                  type: boolean
                  description: Whether file version retention is enabled.
                  nullable: true
                version_retention_ext:
                  type: array
                  items:
                    type: string
                  description: >-
                    List of file extensions enabling file version retention. For
                    null or empty list, all extensions are enabled.
                  nullable: true
                version_retention_max:
                  type: integer
                  description: >-
                    Max preserved version. For value `0`, all version will be
                    preserved.
                  nullable: true
                current_password:
                  type: string
                  description: Current user password, required for updating password.
                  nullable: true
                new_password:
                  type: string
                  minLength: 6
                  maxLength: 128
                  description: New password. If set, `current_password` is required.
                  nullable: true
                two_fa_enabled:
                  type: boolean
                  description: Whether 2FA is enabled.
                  nullable: true
                two_fa_code:
                  type: string
                  description: >-
                    Required if `two_fa_enabled` is not `null`. 


                    If `two_fa_enabled` is `true`, this is the 6-digts code for
                    the [new 2FA secret](./prepare-enabling-2fa-308379967e0).

                    If two_fa_enabled` is `false`, this is the 6-digts code for
                    current enabled secret.
                  nullable: true
                disable_view_sync:
                  type: boolean
                  description: Whether explorer view setting sync is disabled.
                  nullable: true
              x-apifox-orders:
                - nick
                - group_expires
                - language
                - preferred_theme
                - version_retention_enabled
                - version_retention_ext
                - version_retention_max
                - current_password
                - new_password
                - two_fa_enabled
                - two_fa_code
                - disable_view_sync
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
                  01JXKV7FXJPBX6KHK8RYJ3PVSH: &ref_0
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data: null
                x-apifox-orders:
                  - 01JXKV7FXJPBX6KHK8RYJ3PVSH
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
          x-apifox-name: Success
      security: []
      x-apifox-folder: User/Setting
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-308365129-run
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
          additionalProperties: *ref_0
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
