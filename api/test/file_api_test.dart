import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for FileApi
void main() {
  final instance = CloudreveApiClient().getFileApi();

  group(FileApi, () {
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

    // Force unlock
    //
    // If a file is locked by other user/application, file mutation might fail with errors like below:  ```json {     \"code\": 40073,     \"data\": [         {             \"path\": \"cloudreve://my/newdfox.docx\",             \"token\": \"cool-lock0a4b4f68\",             \"owner\": {                 \"owner\": \"bnUn\",                 \"application\": {                     \"type\": \"viewer\",                     \"viewer_id\": \"af01b85b-f57d-46d2-8ad6-1d9b96548e78\"                 }             },             \"type\": 0         }     ],     \"msg\": \"Lock conflict\",     \"error\": \"conflict with locked resource: \\\"cloudreve://my/newdfox.docx\\\"\",     \"correlation_id\": \"64210cda-5bd1-4fe1-9102-77b86f768395\" } ``` The lock token `cool-lock0a4b4f68` in above example is only visable to file owners. This method can be used to force unlock files if the file owners wish to do so.
    //
    //Future<FileLockDelete200Response> fileLockDelete({ FileLockDeleteRequest fileLockDeleteRequest }) async
    test('test fileLockDelete', () async {
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

    // Mount storage policy
    //
    // This method mounts a folder to a given storage policy. All new files in this folder will prefer to use the mounted storage policy. This setting can be inherited by descendant folders if they're never mounted.
    //
    //Future<FilePolicyPatch200Response> filePolicyPatch({ FilePolicyPatchRequest filePolicyPatchRequest }) async
    test('test filePolicyPatch', () async {
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

    // Restore from trash bin
    //
    // Restore deleted files in trash bin to its original location.
    //
    //Future<FileRestorePost200Response> fileRestorePost({ FileRestorePostRequest fileRestorePostRequest }) async
    test('test fileRestorePost', () async {
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

    // Create download URL
    //
    // Create a temporary anonymous URLs to download file content.
    //
    //Future<FileUrlPost200Response> fileUrlPost({ String xCrContextHint, String xCrPurchaseTicket, FileUrlPostRequest fileUrlPostRequest }) async
    test('test fileUrlPost', () async {
      // TODO
    });

    // Update view setting
    //
    // Update view settings for given folder. Only owner of the folder can update view settings.
    //
    //Future<FileViewPatch200Response> fileViewPatch({ FileViewPatchRequest fileViewPatchRequest }) async
    test('test fileViewPatch', () async {
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

  });
}
