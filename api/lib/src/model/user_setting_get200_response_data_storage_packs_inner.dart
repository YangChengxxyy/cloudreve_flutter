//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_setting_get200_response_data_storage_packs_inner.g.dart';

/// UserSettingGet200ResponseDataStoragePacksInner
///
/// Properties:
/// * [name] - Name of the storage pack.
/// * [activeSince] - When the storage pack is activated.
/// * [expireAt] - When the storage pack will be expired.
/// * [size] - Extra capacity included in this pack, in bytes.
@BuiltValue()
abstract class UserSettingGet200ResponseDataStoragePacksInner implements Built<UserSettingGet200ResponseDataStoragePacksInner, UserSettingGet200ResponseDataStoragePacksInnerBuilder> {
  /// Name of the storage pack.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// When the storage pack is activated.
  @BuiltValueField(wireName: r'active_since')
  DateTime? get activeSince;

  /// When the storage pack will be expired.
  @BuiltValueField(wireName: r'expire_at')
  DateTime? get expireAt;

  /// Extra capacity included in this pack, in bytes.
  @BuiltValueField(wireName: r'size')
  int? get size;

  UserSettingGet200ResponseDataStoragePacksInner._();

  factory UserSettingGet200ResponseDataStoragePacksInner([void updates(UserSettingGet200ResponseDataStoragePacksInnerBuilder b)]) = _$UserSettingGet200ResponseDataStoragePacksInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserSettingGet200ResponseDataStoragePacksInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserSettingGet200ResponseDataStoragePacksInner> get serializer => _$UserSettingGet200ResponseDataStoragePacksInnerSerializer();
}

class _$UserSettingGet200ResponseDataStoragePacksInnerSerializer implements PrimitiveSerializer<UserSettingGet200ResponseDataStoragePacksInner> {
  @override
  final Iterable<Type> types = const [UserSettingGet200ResponseDataStoragePacksInner, _$UserSettingGet200ResponseDataStoragePacksInner];

  @override
  final String wireName = r'UserSettingGet200ResponseDataStoragePacksInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserSettingGet200ResponseDataStoragePacksInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.activeSince != null) {
      yield r'active_since';
      yield serializers.serialize(
        object.activeSince,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.expireAt != null) {
      yield r'expire_at';
      yield serializers.serialize(
        object.expireAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserSettingGet200ResponseDataStoragePacksInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserSettingGet200ResponseDataStoragePacksInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'active_since':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.activeSince = valueDes;
          break;
        case r'expire_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expireAt = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserSettingGet200ResponseDataStoragePacksInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserSettingGet200ResponseDataStoragePacksInnerBuilder();
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

