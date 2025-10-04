//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'archived_file.g.dart';

/// ArchivedFile
///
/// Properties:
/// * [name] - Path of the file in the archive.
/// * [size] - Size of the file uncompressed.
/// * [updatedAt] - Datetime when the file is modified.
/// * [isDirectory] - Whether this is a directory instead of a file.
@BuiltValue()
abstract class ArchivedFile implements Built<ArchivedFile, ArchivedFileBuilder> {
  /// Path of the file in the archive.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Size of the file uncompressed.
  @BuiltValueField(wireName: r'size')
  int get size;

  /// Datetime when the file is modified.
  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  /// Whether this is a directory instead of a file.
  @BuiltValueField(wireName: r'is_directory')
  bool? get isDirectory;

  ArchivedFile._();

  factory ArchivedFile([void updates(ArchivedFileBuilder b)]) = _$ArchivedFile;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ArchivedFileBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ArchivedFile> get serializer => _$ArchivedFileSerializer();
}

class _$ArchivedFileSerializer implements PrimitiveSerializer<ArchivedFile> {
  @override
  final Iterable<Type> types = const [ArchivedFile, _$ArchivedFile];

  @override
  final String wireName = r'ArchivedFile';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ArchivedFile object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'size';
    yield serializers.serialize(
      object.size,
      specifiedType: const FullType(int),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.isDirectory != null) {
      yield r'is_directory';
      yield serializers.serialize(
        object.isDirectory,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ArchivedFile object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ArchivedFileBuilder result,
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
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'is_directory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isDirectory = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ArchivedFile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ArchivedFileBuilder();
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

