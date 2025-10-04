import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for EntityCreatedBy
void main() {
  final instance = EntityCreatedByBuilder();
  // TODO add properties to the builder and call build()

  group(EntityCreatedBy, () {
    // ID of the user.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Email of the user. For anonymous session, it is empty.
    // String email
    test('to test the property `email`', () async {
      // TODO
    });

    // Display name of the user.
    // String nickname
    test('to test the property `nickname`', () async {
      // TODO
    });

    // Time at which the user is created. For anonymous session, this value is invalid.
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // EntityCreatedByGroup group
    test('to test the property `group`', () async {
      // TODO
    });

    // Source type of the profile picture. Empty value indicates no profile picture.
    // String avatar
    test('to test the property `avatar`', () async {
      // TODO
    });

    // Whether syncing view setting to server is enabled.
    // String disableViewSync
    test('to test the property `disableViewSync`', () async {
      // TODO
    });

    // What type of share link is visable in user's profile.
    // String shareLinksInProfile
    test('to test the property `shareLinksInProfile`', () async {
      // TODO
    });

  });
}
