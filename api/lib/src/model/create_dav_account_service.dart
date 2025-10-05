//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_dav_account_service.g.dart';

/// CreateDavAccountService
///
/// Properties:
/// * [uri] - [URI](https://docs.cloudreve.org/api/file-uri) of the relative root folder.
/// * [name] - Annotation of the account.
/// * [readonly] - Whether this account is readonly.
/// * [proxy] - Whether reverse proxy is enabled for this account.
@BuiltValue()
abstract class CreateDavAccountService implements Built<CreateDavAccountService, CreateDavAccountServiceBuilder> {
  /// [URI](https://docs.cloudreve.org/api/file-uri) of the relative root folder.
  @BuiltValueField(wireName: r'uri')
  String? get uri;

  /// Annotation of the account.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Whether this account is readonly.
  @BuiltValueField(wireName: r'readonly')
  bool? get readonly;

  /// Whether reverse proxy is enabled for this account.
  @BuiltValueField(wireName: r'proxy')
  bool? get proxy;

  CreateDavAccountService._();

  factory CreateDavAccountService([void updates(CreateDavAccountServiceBuilder b)]) = _$CreateDavAccountService;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateDavAccountServiceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateDavAccountService> get serializer => _$CreateDavAccountServiceSerializer();
}

class _$CreateDavAccountServiceSerializer implements PrimitiveSerializer<CreateDavAccountService> {
  @override
  final Iterable<Type> types = const [CreateDavAccountService, _$CreateDavAccountService];

  @override
  final String wireName = r'CreateDavAccountService';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateDavAccountService object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.uri != null) {
      yield r'uri';
      yield serializers.serialize(
        object.uri,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.readonly != null) {
      yield r'readonly';
      yield serializers.serialize(
        object.readonly,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.proxy != null) {
      yield r'proxy';
      yield serializers.serialize(
        object.proxy,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateDavAccountService object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateDavAccountServiceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uri = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'readonly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.readonly = valueDes;
          break;
        case r'proxy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.proxy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateDavAccountService deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateDavAccountServiceBuilder();
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

