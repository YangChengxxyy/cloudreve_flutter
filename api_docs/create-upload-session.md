# Create upload session

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /file/upload:
    put:
      summary: Create upload session
      deprecated: false
      description: >-
        Create a upload session, which is required before uploading files. After
        upload session created, client should start uploading using the
        information included in the upload session. The implementation of upload
        differs from different storage policy type, you can find Cloudreve's
        implentation in
        [uploader](https://github.com/cloudreve/frontend/tree/master/src/component/Uploader/core/uploader).


        A general file uploading includes 3 steps: Create upload session, upload
        chunks, finish upload request. For small files, please consider using
        [Update file content](./update-file-content-306591838e0).


        ### 1. Create upload session


        Use current method to create an upload session.


        ### 2. Upload chunks


        * For local storage policy, or any other storage policy with
        `storage_policy`.`relay` set to `true`, use [Upload file
        chunk](./upload-file-chunk-306698012e0);

        * For remote storage policy, send chunks to the URL defined in
        `upload_urls`, there should be only one element in `upload_urls`. The
        request is similar to [Upload file
        chunk](./upload-file-chunk-306698012e0), except:
            * Chunk index is passed through query `chunk`, e.g. `http://slavecloudreve.com:5213/api/v4/slave/upload/f1dd2c8c-0c51-475b-a086-b338ae1d8109?chunk=2`
            * `Authorization` shoud be the value of `credential` in upload session, e.g. `Bearer Cr sBnnQ3rZ-UBr7d8ohKpUFtsQc8OMLuWwn1VhuJtdc5k=:1749623351`
        * For any other storage policies, please refer to:
            * S3: [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)
            * OSS: [UploadPart](https://www.alibabacloud.com/help/en/oss/developer-reference/uploadpart)
            * COS: [UploadPart](https://www.tencentcloud.com/document/product/436/7750)
            * OBS: [Uploading Parts](https://support.huaweicloud.com/intl/en-us/api-obs/obs_04_0099.html)
            * OneDrive: [Upload bytes to the upload session](https://learn.microsoft.com/en-us/onedrive/developer/rest-api/api/driveitem_createuploadsession?view=odsp-graph-online#upload-bytes-to-the-upload-session)
            * Qiniu: [分块上传数据](https://developer.qiniu.com/kodo/6366/upload-part)
            * Upyun: [大文件上传](https://help.upyun.com/knowledge-base/form_api/#e5a4a7e69687e4bbb6e4b88ae4bca0)

        ### 3. Finish upload


        * For local/remote/upyun storage policy, or any other storage policy
        with `storage_policy`.`relay` set to `true`, you don't need to finish
        upload, it's automatically finished after last chunk uploaded.

        * OneDrive: [Complete OneDrive
        upload](https://cloudrevev4.apifox.cn/complete-onedrive-upload-295173813e0.md)

        * S3:
        [CompleteMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html),
        then send [Complete S3
        upload](https://cloudrevev4.apifox.cn/complete-s3-upload-295177181e0.md)

        * COS: [Complete Multipart
        Upload](https://www.tencentcloud.com/ind/document/product/436/7742),
        then send [Complete COS
        upload](https://cloudrevev4.apifox.cn/complete-cos-upload-295177009e0.md)

        * OBS: [Completing a Multipart
        Upload](https://support.huaweicloud.com/intl/en-us/api-obs/obs_04_0102.html),
        then send [Complete OBS
        upload](https://cloudrevev4.apifox.cn/complete-obs-upload-295177687e0.md)

        * Qiniu:
        [完成文件上传](https://developer.qiniu.com/kodo/6368/complete-multipart-upload)
      tags:
        - File/Upload
        - 'Auth: JWT Optional'
      parameters:
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
      requestBody:
        content:
          application/json:
            schema:
              type: object
              properties:
                uri:
                  type: string
                  examples:
                    - cloudreve://my/Inspirations/archive%20(3).zip
                  description: >-
                    [URI](https://docs.cloudreve.org/api/file-uri) of the target
                    file.
                size:
                  type: integer
                  description: Size of the file.
                last_modified:
                  type: integer
                  description: >-
                    Optional Unix milliseconds timestamp of when the file is
                    last modified.
                  examples:
                    - 1749524701494
                  nullable: true
                mime_type:
                  type: string
                  description: >-
                    Optional mime type of the file. If not set, will try to
                    guess from file extension name.
                  examples:
                    - application/zip
                  nullable: true
                policy_id:
                  type: string
                  description: ID of the storage policy to use.
                metadata:
                  type: object
                  properties: {}
                  x-apifox-orders: []
                  additionalProperties:
                    type: string
                  description: Optional key-value of file metadata.
                  x-apifox-ignore-properties: []
                  nullable: true
                entity_type:
                  type: string
                  description: >-
                    Optional blob type. 

                    By default (omit this field), request will fail if file name
                    conflict with exsting file.

                    If set to `version`, exsiting file will be overwritten.

                    If set to `live_photo`, the file specified in `uri` must be
                    an existing file.
                  enum:
                    - live_photo
                    - version
                  x-apifox-enum:
                    - value: live_photo
                      name: ''
                      description: ''
                    - value: version
                      name: ''
                      description: ''
                  nullable: true
              x-apifox-orders:
                - uri
                - size
                - last_modified
                - mime_type
                - policy_id
                - metadata
                - entity_type
              required:
                - uri
                - size
                - policy_id
              x-apifox-ignore-properties: []
            example:
              uri: cloudreve://my/Inspirations/archive%20(3).zip
              size: 65328441
              policy_id: J7uV
              last_modified: 1749524701494
              mime_type: application/zip
      responses:
        '200':
          description: ''
          content:
            application/json:
              schema:
                type: object
                x-apifox-refs:
                  01JXC5ZK3HG3SDQQMTJHR2REDK: &ref_12
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data:
                        type: object
                        properties:
                          session_id: &ref_0
                            type: string
                            format: uuid
                            examples:
                              - 9897ebae-7b73-4169-aabc-6396f470e4bb
                            description: >-
                              ID of the upload session. Might be used in
                              following upload requests.
                          upload_id: &ref_1
                            type: string
                            description: >-
                              ID of the multipart upload request. Only used by
                              some storage policy. 
                            examples:
                              - >-
                                AGKGs9fltDAfRRyIGhkAutvsUbPfUOLxRBTs82pm_yoCiQA77sUMuCX5KLTB1dxyv_-zkBfiNyfS4NYTIdafVgkmWL6y3KxKVeiZMgFiNxo2ZLF03-WAJTg92KuOwvrE9DdDNnivKbX4IyR2VfLtP_tbIb0oVh8Gji2IN3p3xvMkcVJcG3KZwaNC3-IaN0xATVA-Bov7qVLT_mU-bGjS6w-c6hIw3_FHouALE4HFmlOrOYbu0IUDdCNAvN9_yvncfVANxEvQIp3sOuEvtqZrS9OByPXtFjR-kADsY0CstrbPHeR1amXEqphiLGK5EucWu0NMWfM8HMz9pKAc7zUkYK8
                          chunk_size: &ref_2
                            type: integer
                            description: >-
                              Size of a chunk in multipart uplaod. `0` means
                              multipart upload is disabled.
                          expires: &ref_3
                            type: integer
                            examples:
                              - 1749620903
                            description: >-
                              Unix timestamp of the expiration date for this
                              uplaod session. Client must finish the uploading
                              before this time.
                          upload_urls:
                            type: array
                            items: &ref_4
                              type: string
                            description: >-
                              List of URLs to upload each chunk. Some storage
                              policy use only one URL for all chunks, in this
                              case only one URL is included in the list.
                            nullable: true
                          credential: &ref_5
                            type: string
                            description: >-
                              Some storage policy (qiniu, upyun, remote)
                              requires addition credential to upload.
                            examples:
                              - >-
                                Bearer Cr
                                sBnnQ3rZ-UBr7d8ohKpUFtsQc8OMLuWwn1VhuJtdc5k=:1749623351
                            nullable: true
                          completeURL: &ref_6
                            type: string
                            examples:
                              - >-
                                https://a09fb0452cf79d9c5ce7f7d.r2.cloudflarestorage.com/cloudrevetest/uploadsr2/3/Inspirations/3_24474f62-88ee-4d37-bcf3-3952cc6f80ea_archive%20%283%29.zip?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=f12234edc4f50556e102723bcd504dec%2F20250610%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20250610T054824Z&X-Amz-Expires=86398&X-Amz-SignedHeaders=host&uploadId=AGKGs9fltDAfRRyIGhkAutvsUbPfUOLxRBTs82pm_yoCiQA77sUMuCX5KLTB1dxyv_-zkBfiNyfS4NYTIdafVgkmWL6y3KxKVeiZMgFiNxo2ZLF03-WAJTg92KuOwvrE9DdDNnivKbX4IyR2VfLtP_tbIb0oVh8Gji2IN3p3xvMkcVJcG3KZwaNC3-IaN0xATVA-Bov7qVLT_mU-bGjS6w-c6hIw3_FHouALE4HFmlOrOYbu0IUDdCNAvN9_yvncfVANxEvQIp3sOuEvtqZrS9OByPXtFjR-kADsY0Cs0NMWfM8HMz9pKAc7zUkYK8&X-Amz-Signature=26760a67676f1293ba63b6be65aaf13408527c95ba033fcf58d79f93
                            description: >-
                              URL to finish multipart upload. Used by cos, oss,
                              s3 and obs.
                            nullable: true
                          storage_policy: &ref_7
                            $ref: '#/components/schemas/StoragePolicy'
                            description: Stroage policy to use.
                          mime_type: &ref_8
                            type: string
                            examples:
                              - application/zip
                            description: >-
                              Desired value of content-type in uplaod requests.
                              Only used by qiniu and upyun.
                            nullable: true
                          upload_policy: &ref_9
                            type: string
                            description: Upyun upload policy.
                            nullable: true
                        x-apifox-orders: &ref_10
                          - session_id
                          - upload_id
                          - chunk_size
                          - expires
                          - upload_urls
                          - credential
                          - completeURL
                          - storage_policy
                          - mime_type
                          - upload_policy
                        description: >-
                          Response content. In some error type, e.g. lock
                          conflicting errors, this field wil present details of
                          the error, e.g. who is locking the current file.
                        required:
                          - session_id
                          - expires
                          - chunk_size
                          - storage_policy
                        nullable: true
                      code: &ref_11
                        type: integer
                        description: |-
                          Response code.
                          `0` - Success.
                        default: 0
                        examples:
                          - 0
                    required:
                      - code
                x-apifox-orders:
                  - 01JXC5ZK3HG3SDQQMTJHR2REDK
                properties:
                  data:
                    type: object
                    properties:
                      session_id: *ref_0
                      upload_id: *ref_1
                      chunk_size: *ref_2
                      expires: *ref_3
                      upload_urls:
                        type: array
                        items: *ref_4
                        description: >-
                          List of URLs to upload each chunk. Some storage policy
                          use only one URL for all chunks, in this case only one
                          URL is included in the list.
                        nullable: true
                      credential: *ref_5
                      completeURL: *ref_6
                      storage_policy: *ref_7
                      mime_type: *ref_8
                      upload_policy: *ref_9
                    x-apifox-orders: *ref_10
                    description: >-
                      Response content. In some error type, e.g. lock
                      conflicting errors, this field wil present details of the
                      error, e.g. who is locking the current file.
                    required:
                      - session_id
                      - expires
                      - chunk_size
                      - storage_policy
                    x-apifox-ignore-properties: []
                    nullable: true
                  code: *ref_11
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
                  session_id: 9897ebae-7b73-4169-aabc-6396f470e4bb
                  upload_id: ''
                  chunk_size: 26214400
                  expires: 1749620196
                  storage_policy:
                    id: J7uV
                    name: Default storage policy
                    type: local
                    max_size: 0
                  uri: cloudreve://my/Inspirations/archive%20(3).zip
                  callback_secret: 0SivUl28p44BADmQDkTJrJOo7iozN74W
                msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: File/Upload
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-306671611-run
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
          additionalProperties: *ref_12
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
    StoragePolicy:
      type: object
      properties:
        id:
          type: string
          examples:
            - 96u1
          description: ID of the storage policy.
        name:
          type: string
          examples:
            - Default storage policy
          description: Display name of the storage policy.
        allowed_suffix:
          type: array
          items:
            type: string
            examples:
              - jpg
              - png
              - zip
            description: File extension name without leading `.`.
          description: >-
            List of file extensions allowed in this storage policy. Empty list
            means no limit on allowed extensions.
          nullable: true
        denied_suffix:
          type: array
          items:
            type: string
            description: File extension name without leading `.`.
          description: >-
            List of file extensions denied in this storage policy. Empty list
            means no limit on denied extensions.
          nullable: true
        type:
          type: string
          description: Storage provider type.
          enum:
            - local
            - qiniu
            - upyun
            - oss
            - cos
            - s3
            - onedrive
            - remote
            - obs
            - load_balance
            - ks3
          x-apifox-enum:
            - value: local
              name: ''
              description: ''
            - value: qiniu
              name: ''
              description: ''
            - value: upyun
              name: ''
              description: ''
            - value: oss
              name: ''
              description: ''
            - value: cos
              name: ''
              description: ''
            - value: s3
              name: ''
              description: ''
            - value: onedrive
              name: ''
              description: ''
            - value: remote
              name: ''
              description: ''
            - value: obs
              name: ''
              description: ''
            - value: load_balance
              name: ''
              description: ''
            - value: ks3
              name: ''
              description: ''
          examples:
            - local
        allowed_name_regexp:
          type: string
          description: If not empty, file name must match this regex.
          nullable: true
        denied_name_regexp:
          type: string
          description: If not empty, file name must NOT match this regex.
          nullable: true
        max_size:
          type: number
          description: Max allowed size of a single file. `0` means no limit.
        relay:
          type: boolean
          description: >-
            Indicates whether upload needs to be proxyed by Cloudreve. If
            `true`, the client should treat it as a `local` storage policy to
            process uploading.
          nullable: true
        weight:
          type: number
          description: >-
            Load balance weight of this storage policy. Only presented if this
            storage policy is child of a load balance storage policy.
          nullable: true
        children:
          type: array
          items: *ref_7
          description: >-
            Child storage policies, only presented if policy type equals
            `load_balance`.
          nullable: true
        chunk_concurrency:
          type: integer
          description: Number of threads to use for concurrent chunk uploading.
          nullable: true
      x-apifox-orders:
        - id
        - name
        - allowed_suffix
        - denied_suffix
        - type
        - allowed_name_regexp
        - denied_name_regexp
        - max_size
        - relay
        - weight
        - children
        - chunk_concurrency
      required:
        - id
        - max_size
        - type
        - name
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
  securitySchemes: {}
servers: []
security: []

```
