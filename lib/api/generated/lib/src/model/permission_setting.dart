//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'permission_setting.g.dart';

/// Permission setting for different groups/users. Encoded as [boolset](https://docs.cloudreve.org/api/boolset).
///
/// Properties:
/// * [userExplicit] - Map of explicit permission setting from user ID to boolset.
/// * [groupExplicit] - Map of explicit permission setting from group ID to boolset.
/// * [sameGroup] - Permission for users under the same group as the file owner.
/// * [other] - Permission for users under the different groups as the file owner.
/// * [anonymous] - Permission for anonymous users.
/// * [everyone] - Permission for everyone else.
@BuiltValue()
abstract class PermissionSetting implements Built<PermissionSetting, PermissionSettingBuilder> {
  /// Map of explicit permission setting from user ID to boolset.
  @BuiltValueField(wireName: r'user_explicit')
  BuiltMap<String, String>? get userExplicit;

  /// Map of explicit permission setting from group ID to boolset.
  @BuiltValueField(wireName: r'group_explicit')
  BuiltMap<String, String>? get groupExplicit;

  /// Permission for users under the same group as the file owner.
  @BuiltValueField(wireName: r'same_group')
  String? get sameGroup;

  /// Permission for users under the different groups as the file owner.
  @BuiltValueField(wireName: r'other')
  String? get other;

  /// Permission for anonymous users.
  @BuiltValueField(wireName: r'anonymous')
  String? get anonymous;

  /// Permission for everyone else.
  @BuiltValueField(wireName: r'everyone')
  String? get everyone;

  PermissionSetting._();

  factory PermissionSetting([void updates(PermissionSettingBuilder b)]) = _$PermissionSetting;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PermissionSettingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PermissionSetting> get serializer => _$PermissionSettingSerializer();
}

class _$PermissionSettingSerializer implements PrimitiveSerializer<PermissionSetting> {
  @override
  final Iterable<Type> types = const [PermissionSetting, _$PermissionSetting];

  @override
  final String wireName = r'PermissionSetting';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PermissionSetting object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.userExplicit != null) {
      yield r'user_explicit';
      yield serializers.serialize(
        object.userExplicit,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.groupExplicit != null) {
      yield r'group_explicit';
      yield serializers.serialize(
        object.groupExplicit,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.sameGroup != null) {
      yield r'same_group';
      yield serializers.serialize(
        object.sameGroup,
        specifiedType: const FullType(String),
      );
    }
    if (object.other != null) {
      yield r'other';
      yield serializers.serialize(
        object.other,
        specifiedType: const FullType(String),
      );
    }
    if (object.anonymous != null) {
      yield r'anonymous';
      yield serializers.serialize(
        object.anonymous,
        specifiedType: const FullType(String),
      );
    }
    if (object.everyone != null) {
      yield r'everyone';
      yield serializers.serialize(
        object.everyone,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PermissionSetting object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PermissionSettingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user_explicit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.userExplicit.replace(valueDes);
          break;
        case r'group_explicit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.groupExplicit.replace(valueDes);
          break;
        case r'same_group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sameGroup = valueDes;
          break;
        case r'other':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.other = valueDes;
          break;
        case r'anonymous':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.anonymous = valueDes;
          break;
        case r'everyone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.everyone = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PermissionSetting deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PermissionSettingBuilder();
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

