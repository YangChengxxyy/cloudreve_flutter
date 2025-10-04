//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_lock_delete_request.g.dart';

/// FileLockDeleteRequest
///
/// Properties:
/// * [tokens] - List of lock tokens, can be retrieved in lock conflict error response.
@BuiltValue()
abstract class FileLockDeleteRequest implements Built<FileLockDeleteRequest, FileLockDeleteRequestBuilder> {
  /// List of lock tokens, can be retrieved in lock conflict error response.
  @BuiltValueField(wireName: r'tokens')
  BuiltList<String> get tokens;

  FileLockDeleteRequest._();

  factory FileLockDeleteRequest([void updates(FileLockDeleteRequestBuilder b)]) = _$FileLockDeleteRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileLockDeleteRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileLockDeleteRequest> get serializer => _$FileLockDeleteRequestSerializer();
}

class _$FileLockDeleteRequestSerializer implements PrimitiveSerializer<FileLockDeleteRequest> {
  @override
  final Iterable<Type> types = const [FileLockDeleteRequest, _$FileLockDeleteRequest];

  @override
  final String wireName = r'FileLockDeleteRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileLockDeleteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tokens';
    yield serializers.serialize(
      object.tokens,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FileLockDeleteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileLockDeleteRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.tokens.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileLockDeleteRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileLockDeleteRequestBuilder();
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

