//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token.g.dart';

/// Token
///
/// Properties:
/// * [accessToken] - Access token that can be used to request API on user's behalf.
/// * [accessExpires] - Expiration date of the access token.
/// * [refreshToken] - Refresh token that can be used to refresh a new pair of access token and refresh token.
/// * [refreshExpires] - Expiration date of the refresh token.
@BuiltValue()
abstract class Token implements Built<Token, TokenBuilder> {
  /// Access token that can be used to request API on user's behalf.
  @BuiltValueField(wireName: r'access_token')
  String? get accessToken;

  /// Expiration date of the access token.
  @BuiltValueField(wireName: r'access_expires')
  DateTime? get accessExpires;

  /// Refresh token that can be used to refresh a new pair of access token and refresh token.
  @BuiltValueField(wireName: r'refresh_token')
  String? get refreshToken;

  /// Expiration date of the refresh token.
  @BuiltValueField(wireName: r'refresh_expires')
  DateTime? get refreshExpires;

  Token._();

  factory Token([void updates(TokenBuilder b)]) = _$Token;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Token> get serializer => _$TokenSerializer();
}

class _$TokenSerializer implements PrimitiveSerializer<Token> {
  @override
  final Iterable<Type> types = const [Token, _$Token];

  @override
  final String wireName = r'Token';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Token object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.accessToken != null) {
      yield r'access_token';
      yield serializers.serialize(
        object.accessToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.accessExpires != null) {
      yield r'access_expires';
      yield serializers.serialize(
        object.accessExpires,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.refreshToken != null) {
      yield r'refresh_token';
      yield serializers.serialize(
        object.refreshToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.refreshExpires != null) {
      yield r'refresh_expires';
      yield serializers.serialize(
        object.refreshExpires,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Token object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TokenBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'access_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessToken = valueDes;
          break;
        case r'access_expires':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.accessExpires = valueDes;
          break;
        case r'refresh_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refreshToken = valueDes;
          break;
        case r'refresh_expires':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.refreshExpires = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Token deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenBuilder();
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

