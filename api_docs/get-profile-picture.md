# Get profile picture

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /user/avatar/{user_id}:
    get:
      summary: Get profile picture
      deprecated: false
      description: >-
        Get given user's profile pciture, can be used as `src` for `img` tag
        directly, since it outputs the raw picture instead of standard
        Cloudreve's JSON response structure.
      tags:
        - User
        - 'Auth: None'
      parameters:
        - name: user_id
          in: path
          description: ID of the user.
          required: true
          example: lpua
          schema:
            type: string
        - name: nocache
          in: query
          description: Force `Cache-Control` header to be `nocache` to disable cache.
          required: false
          example: 'true'
          schema:
            type: boolean
      responses:
        '200':
          description: The response body is the content of the image file.
          content:
            image/png:
              schema:
                type: object
                properties: {}
                x-apifox-orders: []
          headers:
            Cache-Control:
              example: public, max-age=86400
              required: false
              description: URL of the Gravatar image.
              schema:
                type: string
          x-apifox-name: User have uploaded profile picture
        '301':
          description: ''
          headers:
            Location:
              example: >-
                https://www.gravatar.com/avatar/77f7cd77903d9b4f8a6d544aa80d014f?d=mm&s=200
              required: false
              description: ''
              schema:
                type: string
          x-apifox-name: Found
        '404':
          description: No profile picute is set, should fallback to default placeholder.
          headers: {}
          x-apifox-name: No profile picture
      security: []
      x-apifox-folder: User
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-289548561-run
components:
  schemas: {}
  securitySchemes: {}
servers: []
security: []

```
