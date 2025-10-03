import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for GroupApi
void main() {
  final instance = CloudreveApiClient().getGroupApi();

  group(GroupApi, () {
    // List groups
    //
    // List all user groups.
    //
    //Future<GroupListGet200Response> groupListGet() async
    test('test groupListGet', () async {
      // TODO
    });

  });
}
