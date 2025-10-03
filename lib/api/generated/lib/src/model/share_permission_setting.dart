//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'share_permission_setting.g.dart';

/// Only visable to owner. Permission setting for this share link.
///
/// Properties:
/// * [sameGroup] 
/// * [everyone] 
/// * [other] 
/// * [anonymous] 
/// * [groupExplicit] 
/// * [userExplicit] 
@BuiltValue()
abstract class SharePermissionSetting implements Built<SharePermissionSetting, SharePermissionSettingBuilder> {
  @BuiltValueField(wireName: r'same_group')
  JsonObject? get sameGroup;

  @BuiltValueField(wireName: r'everyone')
  String get everyone;

  @BuiltValueField(wireName: r'other')
  JsonObject? get other;

  @BuiltValueField(wireName: r'anonymous')
  String get anonymous;

  @BuiltValueField(wireName: r'group_explicit')
  JsonObject get groupExplicit;

  @BuiltValueField(wireName: r'user_explicit')
  JsonObject get userExplicit;

  SharePermissionSetting._();

  factory SharePermissionSetting([void updates(SharePermissionSettingBuilder b)]) = _$SharePermissionSetting;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SharePermissionSettingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SharePermissionSetting> get serializer => _$SharePermissionSettingSerializer();
}

class _$SharePermissionSettingSerializer implements PrimitiveSerializer<SharePermissionSetting> {
  @override
  final Iterable<Type> types = const [SharePermissionSetting, _$SharePermissionSetting];

  @override
  final String wireName = r'SharePermissionSetting';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SharePermissionSetting object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'same_group';
    yield object.sameGroup == null ? null : serializers.serialize(
      object.sameGroup,
      specifiedType: const FullType.nullable(JsonObject),
    );
    yield r'everyone';
    yield serializers.serialize(
      object.everyone,
      specifiedType: const FullType(String),
    );
    yield r'other';
    yield object.other == null ? null : serializers.serialize(
      object.other,
      specifiedType: const FullType.nullable(JsonObject),
    );
    yield r'anonymous';
    yield serializers.serialize(
      object.anonymous,
      specifiedType: const FullType(String),
    );
    yield r'group_explicit';
    yield serializers.serialize(
      object.groupExplicit,
      specifiedType: const FullType(JsonObject),
    );
    yield r'user_explicit';
    yield serializers.serialize(
      object.userExplicit,
      specifiedType: const FullType(JsonObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SharePermissionSetting object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SharePermissionSettingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'same_group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.sameGroup = valueDes;
          break;
        case r'everyone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.everyone = valueDes;
          break;
        case r'other':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.other = valueDes;
          break;
        case r'anonymous':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.anonymous = valueDes;
          break;
        case r'group_explicit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.groupExplicit = valueDes;
          break;
        case r'user_explicit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.userExplicit = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SharePermissionSetting deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SharePermissionSettingBuilder();
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

