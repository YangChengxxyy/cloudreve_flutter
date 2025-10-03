# Get thumbnail URL

## OpenAPI Specification

```yaml
openapi: 3.0.1
info:
  title: ''
  description: ''
  version: 1.0.0
paths:
  /file/thumb:
    get:
      summary: Get thumbnail URL
      deprecated: false
      description: "Get the thumbnail URL of the given file.\n\n### How to decode obfuscated thumbnail URL?\n\nIf `obfuscated` is set to `true` in the response, you need addition step to recover the original image URL.\n   Here's implementation for the decode functioin in multiple languages\n   \n   \n<AccordionGroup>\n \n<Accordion title=\"JavaScript\">\n```js\nexport const decodeTimeFlowString = (str: string) => {\n  let timeNow = Math.floor(new Date().getTime() / 1000);\n  try {\n    return decodeTimeFlowStringTime(str, timeNow);\n  } catch (e) {}\n  try {\n    return decodeTimeFlowStringTime(str, timeNow - 1000);\n  } catch (e) {}\n  try {\n    return decodeTimeFlowStringTime(str, timeNow + 1000);\n  } catch (e) {}\n\n  return \"\";\n};\n    \nconst decodeTimeFlowStringTime = (str: string, timeNow: number) => {\n  timeNow = Math.floor(timeNow / 1000);\n  const timeNowBackup = timeNow;\n  const timeDigits: number[] = [];\n  if (str.length === 0) {\n    return \"\";\n  }\n  while (timeNow > 0) {\n    timeDigits.push(timeNow % 10);\n    timeNow = Math.floor(timeNow / 10);\n  }\n\n    const res = Array.from(str);\n  let secret = Array.from(str);\n  let add = false;\n  if (secret.length % 2 === 0) {\n    add = true;\n  }\n  let timeDigitIndex = (secret.length - 1) % timeDigits.length;\n  const l = secret.length;\n  for (let pos = 0; pos < l; pos++) {\n    let newIndex = res.length - 1 - pos;\n    if (add) {\n      newIndex = newIndex + timeDigits[timeDigitIndex] * timeDigitIndex;\n    } else {\n      newIndex = 2 * timeDigitIndex * timeDigits[timeDigitIndex] - newIndex;\n    }\n\n    if (newIndex < 0) {\n      newIndex = newIndex * -1;\n    }\n\n    newIndex = newIndex % secret.length;\n\n    res[res.length - 1 - pos] = secret[newIndex];\n    const a = secret[res.length - 1 - pos];\n    const b = secret[newIndex];\n    secret[newIndex] = a;\n    secret[res.length - 1 - pos] = b;\n\n    secret = secret.slice(0, secret.length - 1);\n\n    add = !add;\n    // Add timeDigitIndex by 1, but does not exceed total digits in timeNow\n    timeDigitIndex--;\n    if (timeDigitIndex < 0) {\n      timeDigitIndex = timeDigits.length - 1;\n    }\n  }\n  const resStr = res.join(\"\");\n  const resSep = resStr.split(\"|\");\n  if (resSep.length < 1 || resSep[0] != timeNowBackup.toString()) {\n    throw new Error(\"Invalid time flow string\");\n  }\n\n  return resStr.slice(resSep[0].length + 1);\n};\n```\n</Accordion>\n<Accordion title=\"Golang\">\n```go\npackage main\n\nimport (\n\t\"errors\"\n\t\"strconv\"\n\t\"strings\"\n)\n\nfunc DecodeTimeFlowStringTime(str string, timeNowMillis int64) (string, error) {\n\tif len(str) == 0 {\n\t\treturn \"\", nil\n\t}\n\n\ttimeNow := timeNowMillis / 1000\n\ttimeNowBackup := timeNow\n\n\tvar timeDigits []int\n\tif timeNow == 0 {\n\t\ttimeDigits = append(timeDigits, 0)\n\t} else {\n\t\ttempTime := timeNow\n\t\tfor tempTime > 0 {\n\t\t\ttimeDigits = append(timeDigits, int(tempTime%10))\n\t\t\ttempTime /= 10\n\t\t}\n\t}\n\n\tres := []rune(str)\n\tsecret := []rune(str)\n\n\tadd := len(secret)%2 == 0\n\n\ttimeDigitIndex := (len(secret) - 1) % len(timeDigits)\n\n\tl := len(secret)\n\tfor pos := 0; pos < l; pos++ {\n\t\ttargetIndex := l - 1 - pos\n\n\t\tnewIndex := targetIndex\n\t\tif add {\n\t\t\tnewIndex += timeDigits[timeDigitIndex] * timeDigitIndex\n\t\t} else {\n\t\t\tnewIndex = 2*timeDigitIndex*timeDigits[timeDigitIndex] - newIndex\n\t\t}\n\n\t\tif newIndex < 0 {\n\t\t\tnewIndex *= -1\n\t\t}\n\n\t\tnewIndex %= len(secret)\n\n\t\tres[targetIndex] = secret[newIndex]\n\n\t\tlastIndexInSecret := len(secret) - 1\n\t\tsecret[newIndex], secret[lastIndexInSecret] = secret[lastIndexInSecret], secret[newIndex]\n\t\tsecret = secret[:lastIndexInSecret]\n\n\t\tadd = !add\n\n\t\ttimeDigitIndex--\n\t\tif timeDigitIndex < 0 {\n\t\t\ttimeDigitIndex = len(timeDigits) - 1\n\t\t}\n\t}\n\n\tresStr := string(res)\n\tresSep := strings.SplitN(resStr, \"|\", 2)\n\n\tif len(resSep) < 2 || resSep[0] != strconv.FormatInt(timeNowBackup, 10) {\n\t\treturn \"\", errors.New(\"Invalid time flow string\")\n\t}\n\n\treturn resSep[1], nil\n}\n```\n</Accordion>    \n<Accordion title=\"Java\">\n```java\nimport java.util.ArrayList;\nimport java.util.Collections;\nimport java.util.List;\nimport java.util.stream.Collectors;\n\npublic class TimeFlowDecoder {\n\n    public static String decodeTimeFlowStringTime(String str, long timeNowMillis) throws Exception {\n        if (str == null || str.isEmpty()) {\n            return \"\";\n        }\n\n        long timeNow = timeNowMillis / 1000;\n        long timeNowBackup = timeNow;\n\n        List<Integer> timeDigits = new ArrayList<>();\n        if (timeNow == 0) {\n            timeDigits.add(0);\n        } else {\n            long tempTime = timeNow;\n            while (tempTime > 0) {\n                timeDigits.add((int) (tempTime % 10));\n                tempTime /= 10;\n            }\n        }\n        \n        List<Character> res = new ArrayList<>();\n        for (char c : str.toCharArray()) {\n            res.add(c);\n        }\n\n        List<Character> secret = new ArrayList<>(res);\n\n        boolean add = secret.size() % 2 == 0;\n\n        int timeDigitIndex = (secret.size() - 1) % timeDigits.size();\n        \n        int l = secret.size();\n        for (int pos = 0; pos < l; pos++) {\n            int targetIndex = l - 1 - pos;\n\n            long newIndexLong = targetIndex;\n\n            if (add) {\n                newIndexLong += (long) timeDigits.get(timeDigitIndex) * timeDigitIndex;\n            } else {\n                newIndexLong = 2L * timeDigitIndex * timeDigits.get(timeDigitIndex) - newIndexLong;\n            }\n\n            if (newIndexLong < 0) {\n                newIndexLong *= -1;\n            }\n\n            int newIndex = (int) (newIndexLong % secret.size());\n\n            res.set(targetIndex, secret.get(newIndex));\n\n            Collections.swap(secret, newIndex, secret.size() - 1);\n            secret.remove(secret.size() - 1);\n\n            add = !add;\n\n            timeDigitIndex--;\n            if (timeDigitIndex < 0) {\n                timeDigitIndex = timeDigits.size() - 1;\n            }\n        }\n\n        String resStr = res.stream()\n                           .map(String::valueOf)\n                           .collect(Collectors.joining());\n\n        String[] resSep = resStr.split(\"\\\\|\", 2);\n\n        if (resSep.length < 2 || !resSep[0].equals(String.valueOf(timeNowBackup))) {\n            throw new Exception(\"Invalid time flow string\");\n        }\n\n        return resSep[1];\n    }\n}\n```\n</Accordion>\n<Accordion title=\"Python\">\n```python\nimport math\n\ndef decode_time_flow_string_time(s: str, time_now_ms: int) -> str:\n    if not s:\n        return \"\"\n\n    time_now_s = math.floor(time_now_ms / 1000)\n    time_now_backup = time_now_s\n\n    time_digits = []\n    if time_now_s == 0:\n        time_digits.append(0)\n    else:\n        temp_time = time_now_s\n        while temp_time > 0:\n            time_digits.append(temp_time % 10)\n            temp_time = math.floor(temp_time / 10)\n    \n    res = list(s)\n    secret = list(s)\n    \n    add = len(secret) % 2 == 0\n    \n    time_digit_index = (len(secret) - 1) % len(time_digits)\n    \n    original_len = len(secret)\n    for pos in range(original_len):\n        target_index = original_len - 1 - pos\n        \n        new_index = target_index\n        \n        if add:\n            new_index += time_digits[time_digit_index] * time_digit_index\n        else:\n            new_index = 2 * time_digit_index * time_digits[time_digit_index] - new_index\n            \n        if new_index < 0:\n            new_index *= -1\n            \n        new_index %= len(secret)\n        \n        res[target_index] = secret[new_index]\n        \n        # Swap with the last element and pop to remove efficiently\n        last_index = len(secret) - 1\n        secret[new_index], secret[last_index] = secret[last_index], secret[new_index]\n        secret.pop()\n        \n        add = not add\n        \n        time_digit_index -= 1\n        if time_digit_index < 0:\n            time_digit_index = len(time_digits) - 1\n            \n    res_str = \"\".join(res)\n    \n    parts = res_str.split(\"|\", 1)\n    if len(parts) < 2 or parts[0] != str(time_now_backup):\n        raise ValueError(\"Invalid time flow string\")\n        \n    return parts[1]\n```\n</Accordion>\n    </AccordionGroup>"
      tags:
        - File
        - 'Auth: JWT Optional'
      parameters:
        - name: uri
          in: query
          description: '[URI](https://docs.cloudreve.org/api/file-uri) of the target file.'
          required: false
          example: cloudreve://my/pic.png
          schema:
            type: string
        - name: X-Cr-Context-Hint
          in: header
          description: >-
            Optional context hint to speed up DB queries. You can get its value
            from the response of listing files. It is recommended to set this
            header if you need to perform action on files that are just listed
            by [List files](/list-files-300233178e0) API.
          required: false
          example: b832b998-7ece-4ffd-ba6b-afb64530ca70
          schema:
            type: string
            format: uuid
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
                  01JXBYFPFSQEK6M3E2VTG8N8BW: &ref_5
                    $ref: '#/components/schemas/Response'
                    x-apifox-overrides:
                      aggregated_error: null
                      data:
                        type: object
                        properties:
                          url: &ref_0
                            type: string
                            description: >-
                              URL of the thumbnail image. Possibly be obfuscated
                              if `obfuscated` is `true`. Please refer to the top
                              of this document for how to decode it.
                            examples:
                              - ' http://localhost:5173/api/v4/file/content/8BxU0/0/%5BSakurato%5D%20Sousou%20no%20Frieren%20%5B03%5D%5BAVC-8bit%201080p%20AAC%5D%5BCHS%5D.mp4.jpg?sign=9AGk__dPoeoKlvKaoN0kdg-3ptC9Mp66lY3AgN-vHws%3D%3A1749530110'
                          obfuscated: &ref_1
                            type: boolean
                            description: Whether the `url` is obfuscated.
                            nullable: true
                          expires: &ref_2
                            type: string
                            format: date-time
                            examples:
                              - '2025-06-10T12:35:10.014076+08:00'
                            description: Expire date of the thumbnail image.
                        x-apifox-orders: &ref_3
                          - url
                          - obfuscated
                          - expires
                        description: >-
                          Response content. In some error type, e.g. lock
                          conflicting errors, this field wil present details of
                          the error, e.g. who is locking the current file.
                        required:
                          - url
                          - expires
                      code: &ref_4
                        type: integer
                        description: |-
                          Response code.
                          `0` - Success.
                        default: 0
                        examples:
                          - 0
                    required:
                      - data
                      - code
                x-apifox-orders:
                  - 01JXBYFPFSQEK6M3E2VTG8N8BW
                properties:
                  data:
                    type: object
                    properties:
                      url: *ref_0
                      obfuscated: *ref_1
                      expires: *ref_2
                    x-apifox-orders: *ref_3
                    description: >-
                      Response content. In some error type, e.g. lock
                      conflicting errors, this field wil present details of the
                      error, e.g. who is locking the current file.
                    required:
                      - url
                      - expires
                    x-apifox-ignore-properties: []
                  code: *ref_4
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
              examples:
                '1':
                  summary: No obfuscation
                  value:
                    code: 0
                    data:
                      url: >-
                        http://localhost:5173/api/v4/file/content/rd7cK/0/The%20Man.mp3.jpg?sign=es-PXHqamu0zpF5FtSGKwl6uQANJ7hdURC_hv1ndaSs%3D%3A1749530110
                      expires: '2025-06-10T12:35:10.014076+08:00'
                      obfuscated: true
                    msg: ''
                '2':
                  summary: Obfuscated
                  value:
                    code: 0
                    data:
                      url: >-
                        /3ppoD:|h0a5V1e1E1sacovtn71:Cle2/i44ttD5T7?//p1/t/1fpl3/toht0nl9iJmc0/a/9Sn03g73Cj1goj61-sc41=QBE27ygbvl0wUsABeN2l4Hku.N9weiuj%Eic3p551-.%Y
                      expires: '2025-06-10T12:35:10.00705+08:00'
                      obfuscated: true
                    msg: ''
          headers: {}
          x-apifox-name: Success
      security: []
      x-apifox-folder: File
      x-apifox-status: released
      x-run-in-apifox: https://app.apifox.com/web/project/6271409/apis/api-306622263-run
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
          additionalProperties: *ref_5
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
