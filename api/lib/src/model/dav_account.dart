//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'dav_account.g.dart';

/// DavAccount
///
/// Properties:
/// * [id] - ID of the WebDAV account.
/// * [createdAt] - Datetime when the account is created.
/// * [name] - Annotation of this account.
/// * [uri] - [URI](https://docs.cloudreve.org/api/file-uri) of the root folder.
/// * [password] - Generated password of this account.
/// * [options] - [Boolset](https://docs.cloudreve.org/api/boolset) encoded account options.
@BuiltValue()
abstract class DavAccount implements Built<DavAccount, DavAccountBuilder> {
  /// ID of the WebDAV account.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Datetime when the account is created.
  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  /// Annotation of this account.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// [URI](https://docs.cloudreve.org/api/file-uri) of the root folder.
  @BuiltValueField(wireName: r'uri')
  String? get uri;

  /// Generated password of this account.
  @BuiltValueField(wireName: r'password')
  String? get password;

  /// [Boolset](https://docs.cloudreve.org/api/boolset) encoded account options.
  @BuiltValueField(wireName: r'options')
  String? get options;

  DavAccount._();

  factory DavAccount([void updates(DavAccountBuilder b)]) = _$DavAccount;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DavAccountBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DavAccount> get serializer => _$DavAccountSerializer();
}

class _$DavAccountSerializer implements PrimitiveSerializer<DavAccount> {
  @override
  final Iterable<Type> types = const [DavAccount, _$DavAccount];

  @override
  final String wireName = r'DavAccount';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DavAccount object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.uri != null) {
      yield r'uri';
      yield serializers.serialize(
        object.uri,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.options != null) {
      yield r'options';
      yield serializers.serialize(
        object.options,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DavAccount object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DavAccountBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uri = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.options = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DavAccount deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DavAccountBuilder();
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

