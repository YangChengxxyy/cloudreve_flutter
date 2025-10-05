//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'progress.g.dart';

/// Progress
///
/// Properties:
/// * [total] - Total items to process. Could be file size in bytes, or item counts depending on the progress type.
/// * [current] - Currently procressed items. Could be file size in bytes, or item counts depending on the progress type.
/// * [identifier] - Identifier of this progress (if applied). For batched file tasks, this could be used to differentiate different files processed in parallel.
@BuiltValue()
abstract class Progress implements Built<Progress, ProgressBuilder> {
  /// Total items to process. Could be file size in bytes, or item counts depending on the progress type.
  @BuiltValueField(wireName: r'total')
  int? get total;

  /// Currently procressed items. Could be file size in bytes, or item counts depending on the progress type.
  @BuiltValueField(wireName: r'current')
  int? get current;

  /// Identifier of this progress (if applied). For batched file tasks, this could be used to differentiate different files processed in parallel.
  @BuiltValueField(wireName: r'identifier')
  String? get identifier;

  Progress._();

  factory Progress([void updates(ProgressBuilder b)]) = _$Progress;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProgressBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Progress> get serializer => _$ProgressSerializer();
}

class _$ProgressSerializer implements PrimitiveSerializer<Progress> {
  @override
  final Iterable<Type> types = const [Progress, _$Progress];

  @override
  final String wireName = r'Progress';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Progress object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(int),
      );
    }
    if (object.current != null) {
      yield r'current';
      yield serializers.serialize(
        object.current,
        specifiedType: const FullType(int),
      );
    }
    if (object.identifier != null) {
      yield r'identifier';
      yield serializers.serialize(
        object.identifier,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Progress object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProgressBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'current':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.current = valueDes;
          break;
        case r'identifier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.identifier = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Progress deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProgressBuilder();
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

