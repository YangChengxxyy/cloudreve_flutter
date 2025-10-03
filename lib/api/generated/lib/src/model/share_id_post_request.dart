//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/permission_setting.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'share_id_post_request.g.dart';

/// ShareIdPostRequest
///
/// Properties:
/// * [permissions] 
/// * [uri] - [URI](https://docs.cloudreve.org/api/file-uri) of the shared file or folder.
/// * [shareView] - Whether view settings within the shared folder is exposed to other user. If `uri` points to a file, this field is appliable.
/// * [expire] - Number of seconds after which the link will be expired. Empty value means permanent link.
/// * [price] - Only in Pro edition. Set the price (in points) to pay for this link.
/// * [showReadme] - Whether client UI should automatically render and shoe `README.md` file. Only for share folder.
@BuiltValue()
abstract class ShareIdPostRequest implements Built<ShareIdPostRequest, ShareIdPostRequestBuilder> {
  @BuiltValueField(wireName: r'permissions')
  PermissionSetting get permissions;

  /// [URI](https://docs.cloudreve.org/api/file-uri) of the shared file or folder.
  @BuiltValueField(wireName: r'uri')
  String get uri;

  /// Whether view settings within the shared folder is exposed to other user. If `uri` points to a file, this field is appliable.
  @BuiltValueField(wireName: r'share_view')
  bool? get shareView;

  /// Number of seconds after which the link will be expired. Empty value means permanent link.
  @BuiltValueField(wireName: r'expire')
  int? get expire;

  /// Only in Pro edition. Set the price (in points) to pay for this link.
  @BuiltValueField(wireName: r'price')
  int? get price;

  /// Whether client UI should automatically render and shoe `README.md` file. Only for share folder.
  @BuiltValueField(wireName: r'show_readme')
  bool? get showReadme;

  ShareIdPostRequest._();

  factory ShareIdPostRequest([void updates(ShareIdPostRequestBuilder b)]) = _$ShareIdPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShareIdPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShareIdPostRequest> get serializer => _$ShareIdPostRequestSerializer();
}

class _$ShareIdPostRequestSerializer implements PrimitiveSerializer<ShareIdPostRequest> {
  @override
  final Iterable<Type> types = const [ShareIdPostRequest, _$ShareIdPostRequest];

  @override
  final String wireName = r'ShareIdPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShareIdPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'permissions';
    yield serializers.serialize(
      object.permissions,
      specifiedType: const FullType(PermissionSetting),
    );
    yield r'uri';
    yield serializers.serialize(
      object.uri,
      specifiedType: const FullType(String),
    );
    if (object.shareView != null) {
      yield r'share_view';
      yield serializers.serialize(
        object.shareView,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.expire != null) {
      yield r'expire';
      yield serializers.serialize(
        object.expire,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.showReadme != null) {
      yield r'show_readme';
      yield serializers.serialize(
        object.showReadme,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ShareIdPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ShareIdPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'permissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PermissionSetting),
          ) as PermissionSetting;
          result.permissions.replace(valueDes);
          break;
        case r'uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uri = valueDes;
          break;
        case r'share_view':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.shareView = valueDes;
          break;
        case r'expire':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.expire = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.price = valueDes;
          break;
        case r'show_readme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.showReadme = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ShareIdPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShareIdPostRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

