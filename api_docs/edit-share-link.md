# Edit share link

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /share/{id}:
    post:
      summary: Edit share link
      deprecated: false
      description: >-
        Create a share link to given file. Only file owner or administrator can
        create share links.
      tags:
        - Share
        - 'Auth: JWT Required'
      parameters:
        - name: id
          in: path
          description: ID of the share link.
          required: true
          example: LJ6cM
          schema:
            type: string
      requestBody:
        content:
          application/json:
            schema:
              type: object
              x-apifox-refs:
                01JXCF5RVVXVQ7BWQV4CDZNFSV:
                  $ref: '#/components/schemas/ShareCreateService'
                  x-apifox-overrides:
                    is_private: null
                    password: null
              x-apifox-orders:
                - 01JXCF5RVVXVQ7BWQV4CDZNFSV
              properties:
                permissions: &ref_2
                  $ref: '#/components/schemas/PermissionSetting'
                  description: >-
                    Required in Pro edition. Permission setting of the share
                    link.
                uri:
                  type: string
                  description: >-
                    [URI](https://docs.cloudreve.org/api/file-uri) of the shared
                    file or folder.
                share_view:
                  type: boolean
                  description: >-
                    Whether view settings within the shared folder is exposed to
                    other user. If `uri` points to a file, this field is
                    appliable.
                  nullable: true
                expire:
                  type: integer
                  description: >-
                    Number of seconds after which the link will be expired.
                    Empty value means permanent link.
                  examples:
                    - 864000
                  nullable: true
                price:
                  type: integer
                  examples:
                    - 20
                  description: >-
                    Only in Pro edition. Set the price (in points) to pay for
                    this link.
                  nullable: true
                show_readme:
                  type: boolean
                  description: >-
                    Whether client UI should automatically render and shoe
                    `README.md` file. Only for share folder.
                  nullable: true
              required:
                - permissions
                - uri
              x-apifox-ignore-properties:
                - permissions
                - uri
                - share_view
                - expire
                - price
                - show_readme
            example:
              permissions:
                anonymous: BQ==
                everyone: AQ==
              uri: cloudreve://my/Inspirations
              share_view: true
              expire: 604800
              price: 20
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JXCEZ2DZPNKCT7Q1FVKT0NDX: &ref_3
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      data: &ref_0
                        type: string
                        description: URL of the share link.
                        nullable: true
                      aggregated_error: null
                      msg: &ref_1
                        type: string
                        description: Human readable error message (if any).
                x-apifox-orders:
                  - 01JXCEZ2DZPNKCT7Q1FVKT0NDX
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
                  msg: *ref_1
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
                data: http://localhost:5173/s/g2guA/gcqzfaze
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: Share
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-306856561-run
components:
  schemas:
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
    ShareCreateService:
      type: object
      properties:
        permissions: *ref_2
        uri:
          type: string
          description: >-
            [URI](https://docs.cloudreve.org/api/file-uri) of the shared file or
            folder.
        is_private:
          type: boolean
          description: >-
            Whether this share link is protected with addition password and
            hidden in user's profile.
          nullable: true
        share_view:
          type: boolean
          description: >-
            Whether view settings within the shared folder is exposed to other
            user. If `uri` points to a file, this field is appliable.
          nullable: true
        expire:
          type: integer
          description: >-
            Number of seconds after which the link will be expired. Empty value
            means permanent link.
          examples:
            - 864000
          nullable: true
        price:
          type: integer
          examples:
            - 20
          description: Only in Pro edition. Set the price (in points) to pay for this link.
          nullable: true
        password:
          type: string
          maxLength: 32
          pattern: ^[a-zA-Z0-9]+
          examples:
            - '123123'
          description: Set custom share link password if `is_private` is `true`.
          nullable: true
        show_readme:
          type: boolean
          description: >-
            Whether client UI should automatically render and shoe `README.md`
            file. Only for share folder.
          nullable: true
      required:
        - permissions
        - uri
      x-apifox-orders:
        - permissions
        - uri
        - is_private
        - share_view
        - expire
        - price
        - password
        - show_readme
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
          additionalProperties: *ref_3
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
