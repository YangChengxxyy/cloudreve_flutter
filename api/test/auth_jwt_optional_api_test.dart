import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for AuthJWTOptionalApi
void main() {
  final instance = CloudreveApiClient().getAuthJWTOptionalApi();

  group(AuthJWTOptionalApi, () {
    // List file activities
    //
    // 
    //
    //Future<FileActivitiesGet200Response> fileActivitiesGet(String uri, int pageSize, { String orderDirection, String nextPageToken, String filter, String xCrPurchaseTicket }) async
    test('test fileActivitiesGet', () async {
      // TODO
    });

    // Get archive file list
    //
    // Get the content of archive files. Only supports `7z` or `zip` file.
    //
    //Future<FileArchiveGet200Response> fileArchiveGet(String uri, { String entity }) async
    test('test fileArchiveGet', () async {
      // TODO
    });

    // Update file content
    //
    // Update the content of given file, if it does not exit, a new file will be created with given content.
    //
    //Future<FileContentPut200Response> fileContentPut(String uri, int contentLength, { String previous, String xCrPurchaseTicket, MultipartFile body }) async
    test('test fileContentPut', () async {
      // TODO
    });

    // Create file
    //
    // Create a new file with given URI and props. If ancestor folders does not existed for given `uri`, they will be created automatically.
    //
    //Future<FileCreatePost200Response> fileCreatePost({ String xCrPurchaseTicket, FileCreatePostRequest fileCreatePostRequest }) async
    test('test fileCreatePost', () async {
      // TODO
    });

    // Delete file
    //
    // 
    //
    //Future<FileDelete200Response> fileDelete({ String xCrPurchaseTicket, FileDeleteRequest fileDeleteRequest }) async
    test('test fileDelete', () async {
      // TODO
    });

    // List files
    //
    // List files under given [URI](https://docs.cloudreve.org/api/file-uri), can also be used to search files if the URI contains search conditions.
    //
    //Future<FileGet200Response> fileGet(String uri, int page, int pageSize, { String orderBy, String orderDirection, String nextPageToken, String xCrPurchaseTicket }) async
    test('test fileGet', () async {
      // TODO
    });

    // Get file info
    //
    // Get info of a given file by [URI](https://docs.cloudreve.org/api/file-uri) of file ID. Additional info is available if requested.
    //
    //Future<FileInfoGet200Response> fileInfoGet({ String uri, String id, bool extended, bool folderSummary, String xCrPurchaseTicket }) async
    test('test fileInfoGet', () async {
      // TODO
    });

    // Patch metadata
    //
    // Modify [metadata](https://docs.cloudreve.org/api/metadata) of the given file.
    //
    //Future<FileMetadataPatch200Response> fileMetadataPatch({ String xCrPurchaseTicket, FileMetadataPatchRequest fileMetadataPatchRequest }) async
    test('test fileMetadataPatch', () async {
      // TODO
    });

    // Move or copy files
    //
    // Move or copy files to given destination.
    //
    //Future<FileMovePost200Response> fileMovePost({ String xCrPurchaseTicket, FileMovePostRequest fileMovePostRequest }) async
    test('test fileMovePost', () async {
      // TODO
    });

    // Rename file
    //
    // 
    //
    //Future<FileRenamePost200Response> fileRenamePost({ String xCrPurchaseTicket, FileRenamePostRequest fileRenamePostRequest }) async
    test('test fileRenamePost', () async {
      // TODO
    });

    // Get thumbnail URL
    //
    // Get the thumbnail URL of the given file.  ### How to decode obfuscated thumbnail URL?  If `obfuscated` is set to `true` in the response, you need addition step to recover the original image URL.    Here's implementation for the decode functioin in multiple languages         <AccordionGroup>   <Accordion title=\"JavaScript\"> ```js export const decodeTimeFlowString = (str: string) => {   let timeNow = Math.floor(new Date().getTime() / 1000);   try {     return decodeTimeFlowStringTime(str, timeNow);   } catch (e) {}   try {     return decodeTimeFlowStringTime(str, timeNow - 1000);   } catch (e) {}   try {     return decodeTimeFlowStringTime(str, timeNow + 1000);   } catch (e) {}    return \"\"; };      const decodeTimeFlowStringTime = (str: string, timeNow: number) => {   timeNow = Math.floor(timeNow / 1000);   const timeNowBackup = timeNow;   const timeDigits: number[] = [];   if (str.length === 0) {     return \"\";   }   while (timeNow > 0) {     timeDigits.push(timeNow % 10);     timeNow = Math.floor(timeNow / 10);   }      const res = Array.from(str);   let secret = Array.from(str);   let add = false;   if (secret.length % 2 === 0) {     add = true;   }   let timeDigitIndex = (secret.length - 1) % timeDigits.length;   const l = secret.length;   for (let pos = 0; pos < l; pos++) {     let newIndex = res.length - 1 - pos;     if (add) {       newIndex = newIndex + timeDigits[timeDigitIndex] * timeDigitIndex;     } else {       newIndex = 2 * timeDigitIndex * timeDigits[timeDigitIndex] - newIndex;     }      if (newIndex < 0) {       newIndex = newIndex * -1;     }      newIndex = newIndex % secret.length;      res[res.length - 1 - pos] = secret[newIndex];     const a = secret[res.length - 1 - pos];     const b = secret[newIndex];     secret[newIndex] = a;     secret[res.length - 1 - pos] = b;      secret = secret.slice(0, secret.length - 1);      add = !add;     // Add timeDigitIndex by 1, but does not exceed total digits in timeNow     timeDigitIndex--;     if (timeDigitIndex < 0) {       timeDigitIndex = timeDigits.length - 1;     }   }   const resStr = res.join(\"\");   const resSep = resStr.split(\"|\");   if (resSep.length < 1 || resSep[0] != timeNowBackup.toString()) {     throw new Error(\"Invalid time flow string\");   }    return resStr.slice(resSep[0].length + 1); }; ``` </Accordion> <Accordion title=\"Golang\"> ```go package main  import (  \"errors\"  \"strconv\"  \"strings\" )  func DecodeTimeFlowStringTime(str string, timeNowMillis int64) (string, error) {  if len(str) == 0 {   return \"\", nil  }   timeNow := timeNowMillis / 1000  timeNowBackup := timeNow   var timeDigits []int  if timeNow == 0 {   timeDigits = append(timeDigits, 0)  } else {   tempTime := timeNow   for tempTime > 0 {    timeDigits = append(timeDigits, int(tempTime%10))    tempTime /= 10   }  }   res := []rune(str)  secret := []rune(str)   add := len(secret)%2 == 0   timeDigitIndex := (len(secret) - 1) % len(timeDigits)   l := len(secret)  for pos := 0; pos < l; pos++ {   targetIndex := l - 1 - pos    newIndex := targetIndex   if add {    newIndex += timeDigits[timeDigitIndex] * timeDigitIndex   } else {    newIndex = 2*timeDigitIndex*timeDigits[timeDigitIndex] - newIndex   }    if newIndex < 0 {    newIndex *= -1   }    newIndex %= len(secret)    res[targetIndex] = secret[newIndex]    lastIndexInSecret := len(secret) - 1   secret[newIndex], secret[lastIndexInSecret] = secret[lastIndexInSecret], secret[newIndex]   secret = secret[:lastIndexInSecret]    add = !add    timeDigitIndex--   if timeDigitIndex < 0 {    timeDigitIndex = len(timeDigits) - 1   }  }   resStr := string(res)  resSep := strings.SplitN(resStr, \"|\", 2)   if len(resSep) < 2 || resSep[0] != strconv.FormatInt(timeNowBackup, 10) {   return \"\", errors.New(\"Invalid time flow string\")  }   return resSep[1], nil } ``` </Accordion>     <Accordion title=\"Java\"> ```java import java.util.ArrayList; import java.util.Collections; import java.util.List; import java.util.stream.Collectors;  public class TimeFlowDecoder {      public static String decodeTimeFlowStringTime(String str, long timeNowMillis) throws Exception {         if (str == null || str.isEmpty()) {             return \"\";         }          long timeNow = timeNowMillis / 1000;         long timeNowBackup = timeNow;          List<Integer> timeDigits = new ArrayList<>();         if (timeNow == 0) {             timeDigits.add(0);         } else {             long tempTime = timeNow;             while (tempTime > 0) {                 timeDigits.add((int) (tempTime % 10));                 tempTime /= 10;             }         }                  List<Character> res = new ArrayList<>();         for (char c : str.toCharArray()) {             res.add(c);         }          List<Character> secret = new ArrayList<>(res);          boolean add = secret.size() % 2 == 0;          int timeDigitIndex = (secret.size() - 1) % timeDigits.size();                  int l = secret.size();         for (int pos = 0; pos < l; pos++) {             int targetIndex = l - 1 - pos;              long newIndexLong = targetIndex;              if (add) {                 newIndexLong += (long) timeDigits.get(timeDigitIndex) * timeDigitIndex;             } else {                 newIndexLong = 2L * timeDigitIndex * timeDigits.get(timeDigitIndex) - newIndexLong;             }              if (newIndexLong < 0) {                 newIndexLong *= -1;             }              int newIndex = (int) (newIndexLong % secret.size());              res.set(targetIndex, secret.get(newIndex));              Collections.swap(secret, newIndex, secret.size() - 1);             secret.remove(secret.size() - 1);              add = !add;              timeDigitIndex--;             if (timeDigitIndex < 0) {                 timeDigitIndex = timeDigits.size() - 1;             }         }          String resStr = res.stream()                            .map(String::valueOf)                            .collect(Collectors.joining());          String[] resSep = resStr.split(\"\\\\|\", 2);          if (resSep.length < 2 || !resSep[0].equals(String.valueOf(timeNowBackup))) {             throw new Exception(\"Invalid time flow string\");         }          return resSep[1];     } } ``` </Accordion> <Accordion title=\"Python\"> ```python import math  def decode_time_flow_string_time(s: str, time_now_ms: int) -> str:     if not s:         return \"\"      time_now_s = math.floor(time_now_ms / 1000)     time_now_backup = time_now_s      time_digits = []     if time_now_s == 0:         time_digits.append(0)     else:         temp_time = time_now_s         while temp_time > 0:             time_digits.append(temp_time % 10)             temp_time = math.floor(temp_time / 10)          res = list(s)     secret = list(s)          add = len(secret) % 2 == 0          time_digit_index = (len(secret) - 1) % len(time_digits)          original_len = len(secret)     for pos in range(original_len):         target_index = original_len - 1 - pos                  new_index = target_index                  if add:             new_index += time_digits[time_digit_index] * time_digit_index         else:             new_index = 2 * time_digit_index * time_digits[time_digit_index] - new_index                      if new_index < 0:             new_index *= -1                      new_index %= len(secret)                  res[target_index] = secret[new_index]                  # Swap with the last element and pop to remove efficiently         last_index = len(secret) - 1         secret[new_index], secret[last_index] = secret[last_index], secret[new_index]         secret.pop()                  add = not add                  time_digit_index -= 1         if time_digit_index < 0:             time_digit_index = len(time_digits) - 1                  res_str = \"\".join(res)          parts = res_str.split(\"|\", 1)     if len(parts) < 2 or parts[0] != str(time_now_backup):         raise ValueError(\"Invalid time flow string\")              return parts[1] ``` </Accordion>     </AccordionGroup>
    //
    //Future<FileThumbGet200Response> fileThumbGet({ String uri, String xCrContextHint, String xCrPurchaseTicket }) async
    test('test fileThumbGet', () async {
      // TODO
    });

    // Delete upload session
    //
    // Delete an upload session. Client should send this request if:  * User canceled an upload after uplaod session created. * Non-retryable error occurs. * Client need to delete the upload session, but it's undetermined if the session is already deleted.
    //
    //Future<FileUploadDelete200Response> fileUploadDelete({ String xCrPurchaseTicket, FileUploadDeleteRequest fileUploadDeleteRequest }) async
    test('test fileUploadDelete', () async {
      // TODO
    });

    // Create upload session
    //
    // Create a upload session, which is required before uploading files. After upload session created, client should start uploading using the information included in the upload session. The implementation of upload differs from different storage policy type, you can find Cloudreve's implentation in [uploader](https://github.com/cloudreve/frontend/tree/master/src/component/Uploader/core/uploader).  A general file uploading includes 3 steps: Create upload session, upload chunks, finish upload request. For small files, please consider using [Update file content](./update-file-content-306591838e0).  ### 1. Create upload session  Use current method to create an upload session.  ### 2. Upload chunks  * For local storage policy, or any other storage policy with `storage_policy`.`relay` set to `true`, use [Upload file chunk](./upload-file-chunk-306698012e0); * For remote storage policy, send chunks to the URL defined in `upload_urls`, there should be only one element in `upload_urls`. The request is similar to [Upload file chunk](./upload-file-chunk-306698012e0), except:     * Chunk index is passed through query `chunk`, e.g. `http://slavecloudreve.com:5213/api/v4/slave/upload/f1dd2c8c-0c51-475b-a086-b338ae1d8109?chunk=2`     * `Authorization` shoud be the value of `credential` in upload session, e.g. `Bearer Cr sBnnQ3rZ-UBr7d8ohKpUFtsQc8OMLuWwn1VhuJtdc5k=:1749623351` * For any other storage policies, please refer to:     * S3: [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)     * OSS: [UploadPart](https://www.alibabacloud.com/help/en/oss/developer-reference/uploadpart)     * COS: [UploadPart](https://www.tencentcloud.com/document/product/436/7750)     * OBS: [Uploading Parts](https://support.huaweicloud.com/intl/en-us/api-obs/obs_04_0099.html)     * OneDrive: [Upload bytes to the upload session](https://learn.microsoft.com/en-us/onedrive/developer/rest-api/api/driveitem_createuploadsession?view=odsp-graph-online#upload-bytes-to-the-upload-session)     * Qiniu: [分块上传数据](https://developer.qiniu.com/kodo/6366/upload-part)     * Upyun: [大文件上传](https://help.upyun.com/knowledge-base/form_api/#e5a4a7e69687e4bbb6e4b88ae4bca0)  ### 3. Finish upload  * For local/remote/upyun storage policy, or any other storage policy with `storage_policy`.`relay` set to `true`, you don't need to finish upload, it's automatically finished after last chunk uploaded. * OneDrive: [Complete OneDrive upload](https://cloudrevev4.apifox.cn/complete-onedrive-upload-295173813e0.md) * S3: [CompleteMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html), then send [Complete S3 upload](https://cloudrevev4.apifox.cn/complete-s3-upload-295177181e0.md) * COS: [Complete Multipart Upload](https://www.tencentcloud.com/ind/document/product/436/7742), then send [Complete COS upload](https://cloudrevev4.apifox.cn/complete-cos-upload-295177009e0.md) * OBS: [Completing a Multipart Upload](https://support.huaweicloud.com/intl/en-us/api-obs/obs_04_0102.html), then send [Complete OBS upload](https://cloudrevev4.apifox.cn/complete-obs-upload-295177687e0.md) * Qiniu: [完成文件上传](https://developer.qiniu.com/kodo/6368/complete-multipart-upload)
    //
    //Future<FileUploadPut200Response> fileUploadPut({ String xCrPurchaseTicket, FileUploadPutRequest fileUploadPutRequest }) async
    test('test fileUploadPut', () async {
      // TODO
    });

    // Upload file chunk
    //
    // Upload one chunk to Cloudreve. This method only applies to local storage policy, or storage policies with upload relay enabled.  * If mulitpart upload is disabled, all file data should be send in one request with `index` set to `0`; * Chunks must be uploaded in order, starting from index `0`; * `Content-Length` header is required.
    //
    //Future<FileUploadSessionIdIndexPost200Response> fileUploadSessionIdIndexPost(String sessionId, int index, int contentLength, { String xCrPurchaseTicket, MultipartFile body }) async
    test('test fileUploadSessionIdIndexPost', () async {
      // TODO
    });

    // Create download URL
    //
    // Create a temporary anonymous URLs to download file content.
    //
    //Future<FileUrlPost200Response> fileUrlPost({ String xCrContextHint, String xCrPurchaseTicket, FileUrlPostRequest fileUrlPostRequest }) async
    test('test fileUrlPost', () async {
      // TODO
    });

    // Set file version
    //
    // Set the current version of the file.
    //
    //Future<FileVersionCurrentPost200Response> fileVersionCurrentPost({ String xCrPurchaseTicket, FileVersionCurrentPostRequest fileVersionCurrentPostRequest }) async
    test('test fileVersionCurrentPost', () async {
      // TODO
    });

    // Delete file version
    //
    // Delete a version from a file's version history.
    //
    //Future<FileVersionDelete200Response> fileVersionDelete({ String uri, String version, String xCrPurchaseTicketCommaStringCommaFalseComma1f63aa26Edc040ce950aCb4d4323158eCommaCanBeUsedToAuthenticateToPaidShareLinksWithAAnonymousIdentityPeriodTheTicketValueCanBeObtainedAfterAnAnonymousUserPurchaseAPaidShareLink }) async
    test('test fileVersionDelete', () async {
      // TODO
    });

    // Create viewer session
    //
    // Create a temporary WOPI session for 3rd party file apps or WOPI clients to download or edit files.
    //
    //Future<FileViewerSessionPut200Response> fileViewerSessionPut({ String xCrPurchaseTicket, FileViewerSessionPutRequest fileViewerSessionPutRequest }) async
    test('test fileViewerSessionPut', () async {
      // TODO
    });

    // Prepare OpenID sign-in
    //
    // Preapre a social connector sign in, can be used to sign in Cloudreve account, or link existing account with a social connector account. * For signing in with social connector, authorization is not required. * For account linking, authorization is required for a valid logged-in user.
    //
    //Future<SessionOpenidPut200Response> sessionOpenidPut({ SessionOpenidPutRequest sessionOpenidPutRequest }) async
    test('test sessionOpenidPut', () async {
      // TODO
    });

    // Get share link info
    //
    // Get share link info from ID.
    //
    //Future<ShareInfoIdGet200Response> shareInfoIdGet(String id, { String password, bool countViews, bool ownerExtended, String xCrPurchaseTicket }) async
    test('test shareInfoIdGet', () async {
      // TODO
    });

    // Report abuse
    //
    // Report abuse on share links or users.
    //
    //Future<SiteAbusePost200Response> siteAbusePost({ SiteAbusePostRequest siteAbusePostRequest }) async
    test('test siteAbusePost', () async {
      // TODO
    });

    // Get site settings
    //
    // Get global site settings paritioned by sections. Only settings in your requested section will be included in your response.
    //
    //Future<SiteConfigSectionGet200Response> siteConfigSectionGet(String section) async
    test('test siteConfigSectionGet', () async {
      // TODO
    });

    // Get user
    //
    // Get user by ID. Authorization is optional, but `email` field will be redacted for anonymous request.
    //
    //Future<UserInfoUserIdGet200Response> userInfoUserIdGet(String userId) async
    test('test userInfoUserIdGet', () async {
      // TODO
    });

    // Create a payment
    //
    // Create a payment for given product.
    //
    //Future<VasPaymentPut200Response> vasPaymentPut({ VasPaymentPutRequest vasPaymentPutRequest }) async
    test('test vasPaymentPut', () async {
      // TODO
    });

    // Get payment status
    //
    // 
    //
    //Future<VasPaymentStatusIdTradeNoGet200Response> vasPaymentStatusIdTradeNoGet(String id, String tradeNo) async
    test('test vasPaymentStatusIdTradeNoGet', () async {
      // TODO
    });

  });
}
