//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_setting_get200_response_data_open_id_inner.g.dart';

/// UserSettingGet200ResponseDataOpenIdInner
///
/// Properties:
/// * [provider] - Provider type.
/// * [linkedAt] - Datetime when the provider is linked.
@BuiltValue()
abstract class UserSettingGet200ResponseDataOpenIdInner implements Built<UserSettingGet200ResponseDataOpenIdInner, UserSettingGet200ResponseDataOpenIdInnerBuilder> {
  /// Provider type.
  @BuiltValueField(wireName: r'provider')
  UserSettingGet200ResponseDataOpenIdInnerProviderEnum get provider;
  // enum providerEnum {  0,  1,  2,  };

  /// Datetime when the provider is linked.
  @BuiltValueField(wireName: r'linked_at')
  String get linkedAt;

  UserSettingGet200ResponseDataOpenIdInner._();

  factory UserSettingGet200ResponseDataOpenIdInner([void updates(UserSettingGet200ResponseDataOpenIdInnerBuilder b)]) = _$UserSettingGet200ResponseDataOpenIdInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserSettingGet200ResponseDataOpenIdInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserSettingGet200ResponseDataOpenIdInner> get serializer => _$UserSettingGet200ResponseDataOpenIdInnerSerializer();
}

class _$UserSettingGet200ResponseDataOpenIdInnerSerializer implements PrimitiveSerializer<UserSettingGet200ResponseDataOpenIdInner> {
  @override
  final Iterable<Type> types = const [UserSettingGet200ResponseDataOpenIdInner, _$UserSettingGet200ResponseDataOpenIdInner];

  @override
  final String wireName = r'UserSettingGet200ResponseDataOpenIdInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserSettingGet200ResponseDataOpenIdInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(UserSettingGet200ResponseDataOpenIdInnerProviderEnum),
    );
    yield r'linked_at';
    yield serializers.serialize(
      object.linkedAt,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserSettingGet200ResponseDataOpenIdInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserSettingGet200ResponseDataOpenIdInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserSettingGet200ResponseDataOpenIdInnerProviderEnum),
          ) as UserSettingGet200ResponseDataOpenIdInnerProviderEnum;
          result.provider = valueDes;
          break;
        case r'linked_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.linkedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserSettingGet200ResponseDataOpenIdInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserSettingGet200ResponseDataOpenIdInnerBuilder();
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

class UserSettingGet200ResponseDataOpenIdInnerProviderEnum extends EnumClass {

  /// Provider type.
  @BuiltValueEnumConst(wireNumber: 0)
  static const UserSettingGet200ResponseDataOpenIdInnerProviderEnum number0 = _$userSettingGet200ResponseDataOpenIdInnerProviderEnum_number0;
  /// Provider type.
  @BuiltValueEnumConst(wireNumber: 1)
  static const UserSettingGet200ResponseDataOpenIdInnerProviderEnum number1 = _$userSettingGet200ResponseDataOpenIdInnerProviderEnum_number1;
  /// Provider type.
  @BuiltValueEnumConst(wireNumber: 2)
  static const UserSettingGet200ResponseDataOpenIdInnerProviderEnum number2 = _$userSettingGet200ResponseDataOpenIdInnerProviderEnum_number2;

  static Serializer<UserSettingGet200ResponseDataOpenIdInnerProviderEnum> get serializer => _$userSettingGet200ResponseDataOpenIdInnerProviderEnumSerializer;

  const UserSettingGet200ResponseDataOpenIdInnerProviderEnum._(String name): super(name);

  static BuiltSet<UserSettingGet200ResponseDataOpenIdInnerProviderEnum> get values => _$userSettingGet200ResponseDataOpenIdInnerProviderEnumValues;
  static UserSettingGet200ResponseDataOpenIdInnerProviderEnum valueOf(String name) => _$userSettingGet200ResponseDataOpenIdInnerProviderEnumValueOf(name);
}

