# List tasks

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /workflow:
    get:
      summary: List tasks
      deprecated: false
      description: List all background tasks triggered by current authenticated user.
      tags:
        - Workflow
        - 'Auth: JWT Required'
      parameters:
        - name: page_size
          in: query
          description: ''
          required: true
          example: 20
          schema:
            type: integer
            minimum: 10
            maximum: 100
        - name: category
          in: query
          description: Select which category of tasks to list.
          required: true
          example: general
          schema:
            type: string
            enum:
              - general
              - downloading
              - downloaded
            x-apifox-enum:
              - value: general
                name: ''
                description: General background tasks.
              - value: downloading
                name: ''
                description: Ongoing remote download tasks.
              - value: downloaded
                name: ''
                description: Completed remote download tasks.
        - name: next_page_token
          in: query
          description: >-
            Token for requesting next page. Empty value means requesting the
            first page.
          required: false
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
                  01JV49PXVKBEN8JHBPZMFG10M9: &ref_1
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      correlation_id: null
                      aggregated_error: null
                      error: null
                      data: &ref_0
                        $ref: '#/components/schemas/TaskListResponse'
                    required:
                      - data
                x-apifox-orders:
                  - 01JV49PXVKBEN8JHBPZMFG10M9
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
                required:
                  - data
                  - code
                x-apifox-ignore-properties:
                  - data
                  - code
                  - msg
              examples:
                '1':
                  summary: General background tasks
                  value:
                    code: 0
                    data:
                      tasks:
                        - created_at: '2025-04-26T09:57:59+08:00'
                          updated_at: '2025-04-26T09:58:30+08:00'
                          id: W6AmTK
                          status: completed
                          type: relocate
                          summary:
                            phase: finish
                            props:
                              dst_policy_id: VecA
                              failed: 0
                              src_multiple:
                                - >-
                                  cloudreve://my/1/cloudreve_4.0.0-beta.6_darwin_arm64.tar.gz
                          duration: 19806
                          resume_time: 1745632709
                        - created_at: '2025-03-16T21:17:50+08:00'
                          updated_at: '2025-03-16T21:18:18+08:00'
                          id: WqV7iK
                          status: completed
                          type: create_archive
                          node:
                            id: xmhb
                            name: Master
                            type: master
                            capabilities: Hg==
                          summary:
                            phase: upload_archive
                            props:
                              dst: cloudreve://my/1/archive2.zip
                              failed: 1
                              src_multiple:
                                - cloudreve://my/1/ad
                          duration: 65
                          resume_time: 1742131087
                        - created_at: '2025-03-16T20:06:18+08:00'
                          updated_at: '2025-03-16T20:06:19+08:00'
                          id: 5EgBfy
                          status: error
                          type: extract_archive
                          node:
                            id: xmhb
                            name: Master
                            type: master
                            capabilities: Hg==
                          summary:
                            props:
                              dst: >-
                                cloudreve://my/0/1/2/3/4/5/6/7/8/9/Q3%E5%A4%B4%E8%84%91%E9%A3%8E%E6%9A%B4
                              src: >-
                                cloudreve://my/0/1/2/3/4/5/6/7/8/9/Q3%E5%A4%B4%E8%84%91%E9%A3%8E%E6%9A%B4/archive2.zip
                          error: >-
                            file size 22693848 exceeds the limit 10485760
                            (non-retryable error)
                          duration: 13
                      pagination:
                        page: 0
                        page_size: 25
                        is_cursor: true
                    msg: ''
                '2':
                  summary: Completed remote download tasks
                  value:
                    code: 0
                    data:
                      tasks:
                        - created_at: '2025-05-15T10:15:09+08:00'
                          updated_at: '2025-05-15T10:17:11+08:00'
                          id: WmN7cK
                          status: completed
                          type: remote_download
                          node:
                            id: xmhb
                            name: Master
                            type: master
                            capabilities: Hg==
                          summary:
                            phase: seeding
                            props:
                              download:
                                name: big-buck-bunny-4k-60fps
                                state: completed
                                total: 1318600621
                                downloaded: 1318600621
                                download_speed: 0
                                uploaded: 0
                                upload_speed: 0
                                hash: 6120ed078e587fb0ffd42e6dafee2c1a767a4a3d
                                files:
                                  - index: 1
                                    name: >-
                                      big-buck-bunny-4k-60fps/BigBuckBunny4k60fps.ia.mp4
                                    size: 645345252
                                    progress: 1
                                    selected: true
                                  - index: 2
                                    name: >-
                                      big-buck-bunny-4k-60fps/BigBuckBunny4k60fps.mp4
                                    size: 673223862
                                    progress: 1
                                    selected: true
                                  - index: 3
                                    name: big-buck-bunny-4k-60fps/__ia_thumb.jpg
                                    size: 10111
                                    progress: 1
                                    selected: true
                                  - index: 4
                                    name: >-
                                      big-buck-bunny-4k-60fps/big-buck-bunny-4k-60fps_meta.sqlite
                                    size: 20480
                                    progress: 1
                                    selected: true
                                  - index: 5
                                    name: >-
                                      big-buck-bunny-4k-60fps/big-buck-bunny-4k-60fps_meta.xml
                                    size: 916
                                    progress: 1
                                    selected: true
                                pieces: >-
                                  f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f38=
                                num_pieces: 1258
                              dst: cloudreve://my/Inspirations
                              failed: 0
                              src: >-
                                cloudreve://my/Inspirations/big-buck-bunny-4k-60fps_archive.torrent
                              src_str: ''
                          duration: 2012
                          resume_time: 1747275371
                        - created_at: '2025-05-13T14:30:40+08:00'
                          updated_at: '2025-05-13T14:32:12+08:00'
                          id: jA6XFN
                          status: completed
                          type: remote_download
                          node:
                            id: xmhb
                            name: Master
                            type: master
                            capabilities: Hg==
                          summary:
                            phase: seeding
                            props:
                              download:
                                name: test_folder
                                state: completed
                                total: 19296724
                                downloaded: 19296724
                                download_speed: 0
                                uploaded: 0
                                upload_speed: 0
                                hash: d984f67af9917b214cd8b6048ab5624c7df6a07a
                                files:
                                  - index: 1
                                    name: >-
                                      test_folder/images/LOC_Main_Reading_Room_Highsmith.jpg
                                    size: 17614527
                                    progress: 1
                                    selected: true
                                  - index: 2
                                    name: test_folder/images/melk-abbey-library.jpg
                                    size: 1682177
                                    progress: 1
                                    selected: true
                                  - index: 3
                                    name: test_folder/README
                                    size: 20
                                    progress: 1
                                    selected: true
                                pieces: >-
                                  f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f38=
                                num_pieces: 589
                              dst: cloudreve://my/Inspirations
                              failed: 0
                              src: >-
                                cloudreve://my/Inspirations/test_folder-d984f67af9917b214cd8b6048ab5624c7df6a07a%20(2).torrent
                              src_str: ''
                          duration: 9476
                          resume_time: 1747117872
                        - created_at: '2025-04-27T10:07:49+08:00'
                          updated_at: '2025-04-27T10:11:20+08:00'
                          id: yAdZI3
                          status: completed
                          type: remote_download
                          node:
                            id: xmhb
                            name: Master
                            type: master
                            capabilities: Hg==
                          summary:
                            phase: seeding
                            props:
                              download:
                                name: '[Flugel] Futoku No Guild'
                                state: seeding
                                total: 483393536
                                downloaded: 483393536
                                download_speed: 0
                                uploaded: 0
                                upload_speed: 0
                                hash: 7c005f3554b6ac34784b9d6df16a9b3b48785d56
                                files:
                                  - index: 1
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      01.mkv
                                    size: 482972293
                                    progress: 1
                                    selected: true
                                  - index: 2
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      02.mkv
                                    size: 479667444
                                    progress: 0.02711077260436295
                                    selected: false
                                  - index: 3
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      03.mkv
                                    size: 457062521
                                    progress: 0.018353305323846495
                                    selected: false
                                  - index: 4
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      04.mkv
                                    size: 431484683
                                    progress: 0.041312687801712766
                                    selected: false
                                  - index: 5
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      05.mkv
                                    size: 410152291
                                    progress: 0.04346139809810303
                                    selected: false
                                  - index: 6
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      06.mkv
                                    size: 425498146
                                    progress: 0.019714793304880816
                                    selected: false
                                  - index: 7
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      07.mkv
                                    size: 478911956
                                    progress: 0.02846345310284966
                                    selected: false
                                  - index: 8
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      08.mkv
                                    size: 414235201
                                    progress: 0.0303762499411536
                                    selected: false
                                  - index: 9
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      09.mkv
                                    size: 516305352
                                    progress: 0.040618443947487884
                                    selected: false
                                  - index: 10
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      10.mkv
                                    size: 375053609
                                    progress: 0.01957062090289071
                                    selected: false
                                  - index: 11
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      11.mkv
                                    size: 486802930
                                    progress: 0.03446408180000067
                                    selected: false
                                  - index: 12
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      12.mkv
                                    size: 421832307
                                    progress: 0.037286475547260535
                                    selected: false
                                pieces: >-
                                  f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/f39/fwAAAAAAAAAAfwAAAAAEIABAAAQAAAAQAAAAAAAAAAAAEAAAAAAAAAAAfwAAAAAgEAAIfwAAAAAAAAAAAH8AAAAAAAAAAAAAAAAAAAAAAAAgBAAAAAAAAAAAAAAAAAAAAAIAAAAAEBAAABAAAH8AAAAAAAAAAAQAfwAIAAAAAAAAAAAAEAIAAAAKfwBAAQAAAQABAAAAEAAEACAAIAAAAAAAAAAAAAAAAEAAAAB/QAACfwAQAAAgAQQAAAAAAAAAAAAAAAAAAAIAAAAAfwAABAAQACJ/AAAAEgAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAIAAAAAAAAAAACgAAAAQAAAAAAAAAAEAAAAAAAAAAAH8AAAAAAAAAfwAAIABAAAEAAAACAQAEAAAAAAACACAAAAAAEABAAAAAAAAAAAQEAAAAAAAAAAgAAAAAAAAAIAAAAAAAAAAAAAAAAAgQAAB/AAABABAAAAAAAH8AIAgIAAAAAAAICH8AAEAAAAAAACAAAAAAAAAEAAAAAAAABAQACAAAAEAAAAQAAAhAAEAAfwAAAEAAAAAAAgAAAAAAAAAAAQAAAAAAAAAAAEABAAAAAAAAAEAAAAAAfxAAAAIAAAAAAAAAAAAACAAAAAAAAH8AAAAAAAAQAAAAAAAAAAEEAAAAAAAAAAB/AAAAAAACACABAAB/AABgAAgAEAAAAAAAAAAIIAAAAAAAAAAAIAAAEAAQEAAAECAAAAB/AAAAABAAAABAAAAAAAABBAAAAgIAAAAA
                                num_pieces: 5131
                              dst: cloudreve://my/Inspirations
                              failed: 0
                              src: ''
                              src_str: >-
                                magnet:?xt=urn:btih:7c005f3554b6ac34784b9d6df16a9b3b48785d56&dn=%5BTinosoft%5D%20Futoku%20no%20Guild%20%5BBD%201080p%20HEVC%5D%20%28Batch%29&tr=http%3A%2F%2Fnyaa.tracker.wf%3A7777%2Fannounce&tr=udp%3A%2F%2Fopen.stealth.si%3A80%2Fannounce&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337%2Fannounce&tr=udp%3A%2F%2Fexodus.desync.com%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.torrent.eu.org%3A451%2Fannounce
                          duration: 53757
                          resume_time: 1745719775
                      pagination:
                        page: 0
                        page_size: 25
                        is_cursor: true
                    msg: ''
                '3':
                  summary: Downloading remote download tasks
                  value:
                    code: 0
                    data:
                      tasks:
                        - created_at: '2025-05-20T14:37:42+08:00'
                          updated_at: '2025-05-20T14:38:48+08:00'
                          id: jAMaCN
                          status: suspending
                          type: remote_download
                          node:
                            id: xmhb
                            name: Master
                            type: master
                            capabilities: Hg==
                          summary:
                            phase: monitor
                            props:
                              download:
                                name: '[Flugel] Futoku No Guild'
                                state: downloading
                                total: 5379978733
                                downloaded: 5767168
                                download_speed: 220626
                                uploaded: 0
                                upload_speed: 0
                                hash: 7c005f3554b6ac34784b9d6df16a9b3b48785d56
                                files:
                                  - index: 1
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      01.mkv
                                    size: 482972293
                                    progress: 0
                                    selected: true
                                  - index: 2
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      02.mkv
                                    size: 479667444
                                    progress: 0
                                    selected: true
                                  - index: 3
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      03.mkv
                                    size: 457062521
                                    progress: 0
                                    selected: true
                                  - index: 4
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      04.mkv
                                    size: 431484683
                                    progress: 0.0024301581059831038
                                    selected: true
                                  - index: 5
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      05.mkv
                                    size: 410152291
                                    progress: 0
                                    selected: true
                                  - index: 6
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      06.mkv
                                    size: 425498146
                                    progress: 0
                                    selected: true
                                  - index: 7
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      07.mkv
                                    size: 478911956
                                    progress: 0
                                    selected: true
                                  - index: 8
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      08.mkv
                                    size: 414235201
                                    progress: 0.0025313541617628
                                    selected: true
                                  - index: 9
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      09.mkv
                                    size: 516305352
                                    progress: 0
                                    selected: true
                                  - index: 10
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      10.mkv
                                    size: 375053609
                                    progress: 0
                                    selected: true
                                  - index: 11
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      11.mkv
                                    size: 486802930
                                    progress: 0
                                    selected: true
                                  - index: 12
                                    name: >-
                                      [Flugel] Futoku No Guild/Futoku no Guild -
                                      12.mkv
                                    size: 421832307
                                    progress: 0.007457295109452107
                                    selected: true
                                pieces: >-
                                  AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAABAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
                                num_pieces: 5131
                              dst: cloudreve://my
                              failed: 0
                              src: ''
                              src_str: >-
                                magnet:?xt=urn:btih:7c005f3554b6ac34784b9d6df16a9b3b48785d56&dn=%5BTinosoft%5D%20Futoku%20no%20Guild%20%5BBD%201080p%20HEVC%5D%20%28Batch%29&tr=http%3A%2F%2Fnyaa.tracker.wf%3A7777%2Fannounce&tr=udp%3A%2F%2Fopen.stealth.si%3A80%2Fannounce&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337%2Fannounce&tr=udp%3A%2F%2Fexodus.desync.com%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.torrent.eu.org%3A451%2Fannounce
                          duration: 38
                          resume_time: 1747723128
                      pagination:
                        page: 0
                        page_size: 32765
                        is_cursor: true
                    msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: Workflow
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-295188637-run
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
    TaskListResponse:
      type: object
      properties:
        pagination:
          type: object
          x-apifox-refs:
            01JV48MWWY7AGJC0VN9YN40MVY:
              $ref: '#/components/schemas/PaginationResults'
              x-apifox-overrides:
                page: null
                total_items: null
          x-apifox-orders:
            - 01JV48MWWY7AGJC0VN9YN40MVY
          properties:
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
            - page_size
            - next_token
          x-apifox-ignore-properties:
            - page_size
            - next_token
            - is_cursor
        tasks:
          type: array
          items:
            $ref: '#/components/schemas/TaskResponse'
      x-apifox-orders:
        - pagination
        - tasks
      required:
        - pagination
        - tasks
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
    TaskResponse:
      type: object
      properties:
        created_at:
          type: string
          format: date-time
          examples:
            - '2025-04-22T17:13:06+08:00'
        updated_at:
          type: string
          format: date-time
          examples:
            - '2025-04-22T17:13:06+08:00'
        id:
          type: string
          examples:
            - LO5GtW
          description: ID of the tasks.
        status:
          type: string
          description: Status of the task
          examples:
            - completed
          enum:
            - queued
            - processing
            - suspending
            - error
            - canceled
            - completed
          x-apifox-enum:
            - value: queued
              name: ''
              description: Tasks is queued and wait to be processed.
            - value: processing
              name: ''
              description: Task is being processed.
            - value: suspending
              name: ''
              description: >-
                Task is suspended for async operations, it will be resumed
                later.
            - value: error
              name: ''
              description: Task is failed with error.
            - value: canceled
              name: ''
              description: Task is canceled
            - value: completed
              name: ''
              description: Task is completed.
        type:
          type: string
          examples:
            - extract_archive
          enum:
            - media_meta
            - entity_recycle_routine
            - explicit_entity_recycle
            - upload_sentinel_check
            - create_archive
            - extract_archive
            - relocate
            - remote_download
            - import
          x-apifox-enum:
            - value: media_meta
              name: ''
              description: Extract media metadata.
            - value: entity_recycle_routine
              name: ''
              description: Stale entities recycle routine.
            - value: explicit_entity_recycle
              name: ''
              description: Explicitly entity recycle.
            - value: upload_sentinel_check
              name: ''
              description: Upload sentinel check.
            - value: create_archive
              name: ''
              description: Create archive file.
            - value: extract_archive
              name: ''
              description: Extract archive file
            - value: relocate
              name: ''
              description: Relocate file storage policy.
            - value: remote_download
              name: ''
              description: Remote download.
            - value: import
              name: ''
              description: Import files from external storage.
        summary:
          type: object
          properties:
            phase:
              type: string
              examples:
                - finish
              description: >-
                Current phase(sub-step) of the task. The possible value differs
                from different task types.
            props:
              type: object
              properties: {}
              x-apifox-orders: []
              additionalProperties:
                type: string
              description: Key-value map of task specific props.
              x-apifox-ignore-properties: []
          x-apifox-orders:
            - phase
            - props
          required:
            - phase
            - props
          x-apifox-ignore-properties: []
          nullable: true
        duration:
          type: integer
          description: Tasl executed duration in milliseconds.
          examples:
            - 1908
          nullable: true
        resume_time:
          type: integer
          description: Time stamp of the next expected resume time for suspended task.
          examples:
            - 1745313204
          nullable: true
        error:
          type: string
          description: Error message (if any).
          nullable: true
        error_history:
          type: array
          items:
            type: string
          description: List of error messages in previous retries (if any).
          nullable: true
        retry_count:
          type: integer
          description: Retry count.
          nullable: true
        node:
          $ref: '#/components/schemas/Node'
          description: Node of which this tasks is distributed onto.
      required:
        - created_at
        - updated_at
        - id
        - status
        - type
        - node
      x-apifox-orders:
        - created_at
        - updated_at
        - id
        - status
        - type
        - summary
        - duration
        - resume_time
        - error
        - error_history
        - retry_count
        - node
      x-apifox-ignore-properties: []
      x-apifox-folder: ''
    Node:
      type: object
      properties:
        id:
          type: string
          description: ID of the node.
          examples:
            - xmhb
        name:
          type: string
          examples:
            - Master
          description: Name of the node.
        type:
          type: string
          enum:
            - master
            - slave
          x-apifox-enum:
            - value: master
              name: ''
              description: Master node.
            - value: slave
              name: ''
              description: Slave node.
          description: Type of the node.
        capabilities:
          type: string
          description: >-
            [Boolset](https://docs.cloudreve.org/en/api/boolset) encoded node
            capabilities.
      required:
        - id
        - name
        - type
        - capabilities
      x-apifox-orders:
        - id
        - name
        - type
        - capabilities
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
  securitySchemes: {}
servers: []
security: []

```
