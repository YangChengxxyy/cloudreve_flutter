//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'folder_summary.g.dart';

/// FolderSummary
///
/// Properties:
/// * [size] - Total size of this folder.
/// * [files] - Count of files under this folder (recursive).
/// * [folders] - Count of folders under this folder (recursive).
/// * [completed] - Whether the size calculation is completed. If there're too many children under this folder, it may exceed the limit, in this case only subset of files are counted.
/// * [calculatedAt] - When the summary is calculated. It may be a cached result.
@BuiltValue()
abstract class FolderSummary implements Built<FolderSummary, FolderSummaryBuilder> {
  /// Total size of this folder.
  @BuiltValueField(wireName: r'size')
  int get size;

  /// Count of files under this folder (recursive).
  @BuiltValueField(wireName: r'files')
  int get files;

  /// Count of folders under this folder (recursive).
  @BuiltValueField(wireName: r'folders')
  int get folders;

  /// Whether the size calculation is completed. If there're too many children under this folder, it may exceed the limit, in this case only subset of files are counted.
  @BuiltValueField(wireName: r'completed')
  bool get completed;

  /// When the summary is calculated. It may be a cached result.
  @BuiltValueField(wireName: r'calculated_at')
  String get calculatedAt;

  FolderSummary._();

  factory FolderSummary([void updates(FolderSummaryBuilder b)]) = _$FolderSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FolderSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FolderSummary> get serializer => _$FolderSummarySerializer();
}

class _$FolderSummarySerializer implements PrimitiveSerializer<FolderSummary> {
  @override
  final Iterable<Type> types = const [FolderSummary, _$FolderSummary];

  @override
  final String wireName = r'FolderSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FolderSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'size';
    yield serializers.serialize(
      object.size,
      specifiedType: const FullType(int),
    );
    yield r'files';
    yield serializers.serialize(
      object.files,
      specifiedType: const FullType(int),
    );
    yield r'folders';
    yield serializers.serialize(
      object.folders,
      specifiedType: const FullType(int),
    );
    yield r'completed';
    yield serializers.serialize(
      object.completed,
      specifiedType: const FullType(bool),
    );
    yield r'calculated_at';
    yield serializers.serialize(
      object.calculatedAt,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FolderSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FolderSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        case r'files':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.files = valueDes;
          break;
        case r'folders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.folders = valueDes;
          break;
        case r'completed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.completed = valueDes;
          break;
        case r'calculated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.calculatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FolderSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FolderSummaryBuilder();
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

