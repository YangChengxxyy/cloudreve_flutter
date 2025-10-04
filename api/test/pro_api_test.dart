import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for ProApi
void main() {
  final instance = CloudreveApiClient().getProApi();

  group(ProApi, () {
    // List file activities
    //
    // 
    //
    //Future<FileActivitiesGet200Response> fileActivitiesGet(String uri, int pageSize, { String orderDirection, String nextPageToken, String filter, String xCrPurchaseTicket }) async
    test('test fileActivitiesGet', () async {
      // TODO
    });

    // Delete permission setting
    //
    // Clear existing permission setting of target files, whose permission settings will be inherited from parent after this action. Only owner of the file or administrators can perform this action.
    //
    //Future<FilePermissionDelete200Response> filePermissionDelete({ FilePermissionDeleteRequest filePermissionDeleteRequest }) async
    test('test filePermissionDelete', () async {
      // TODO
    });

    // Set permission
    //
    // Set file permissions. Only owner of the file or administrators can perform this action.
    //
    //Future<FilePermissionPost200Response> filePermissionPost({ FilePermissionPostRequest filePermissionPostRequest }) async
    test('test filePermissionPost', () async {
      // TODO
    });

    // List groups
    //
    // List all user groups.
    //
    //Future<GroupListGet200Response> groupListGet() async
    test('test groupListGet', () async {
      // TODO
    });

    // Finish OpenID sign-in
    //
    // After user sign in via the URL obtained from [Prepare OpenID Sign-in](https://cloudrevev4.apifox.cn/prepare-openid-sign-in-289505034e0.md), request this to notify Cloudreve the result.
    //
    //Future<SessionOpenidPost200Response> sessionOpenidPost({ SessionOpenidPostRequest sessionOpenidPostRequest }) async
    test('test sessionOpenidPost', () async {
      // TODO
    });

    // Unlink OpenID
    //
    // Unlink an OpenID account from a Cloudreve account.
    //
    //Future<SessionOpenidProviderIdDelete200Response> sessionOpenidProviderIdDelete(int providerId) async
    test('test sessionOpenidProviderIdDelete', () async {
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

    // Report abuse
    //
    // Report abuse on share links or users.
    //
    //Future<SiteAbusePost200Response> siteAbusePost({ SiteAbusePostRequest siteAbusePostRequest }) async
    test('test siteAbusePost', () async {
      // TODO
    });

    // List credit changes
    //
    // 
    //
    //Future<UserCreditChangesGet200Response> userCreditChangesGet(num pageSize, { String orderDirection, String nextPageToken }) async
    test('test userCreditChangesGet', () async {
      // TODO
    });

    // List payments
    //
    // 
    //
    //Future<UserPaymentsGet200Response> userPaymentsGet(num pageSize, { String orderDirection, String nextPageToken }) async
    test('test userPaymentsGet', () async {
      // TODO
    });

    // List available nodes
    //
    // List available nodes assigned to authenticated user.
    //
    //Future<UserSettingNodesGet200Response> userSettingNodesGet() async
    test('test userSettingNodesGet', () async {
      // TODO
    });

    // List available storage policies
    //
    // List available storage policies for authenticated user.
    //
    //Future<UserSettingPoliciesGet200Response> userSettingPoliciesGet() async
    test('test userSettingPoliciesGet', () async {
      // TODO
    });

    // Check gift code
    //
    // Get details of given gift code, but it does not process redemption.
    //
    //Future<VasGiftcodeCodeGet200Response> vasGiftcodeCodeGet(String code) async
    test('test vasGiftcodeCodeGet', () async {
      // TODO
    });

    // Redeem gift code
    //
    // 
    //
    //Future<VasGiftcodeCodeRedeemPost200Response> vasGiftcodeCodeRedeemPost(String code) async
    test('test vasGiftcodeCodeRedeemPost', () async {
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

    // Relocate storage policy
    //
    // Create a task to relocate storage policy for given files.
    //
    //Future<WorkflowReloactePost200Response> workflowReloactePost({ WorkflowReloactePostRequest workflowReloactePostRequest }) async
    test('test workflowReloactePost', () async {
      // TODO
    });

  });
}
