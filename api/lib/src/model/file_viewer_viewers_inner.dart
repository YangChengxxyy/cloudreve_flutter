//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_viewer_viewers_inner.g.dart';

/// FileViewerViewersInner
///
/// Properties:
/// * [id] - ID of the file app.
/// * [type] - Type of the file app.
/// * [displayName] - Display name of the app, can be i18next key.
/// * [exts] - Supported extensions.
/// * [icon] - Icon URL.
/// * [maxSize] - Max supported size in bytes of the source file.
/// * [url] - URL of embed iframe apps.
@BuiltValue()
abstract class FileViewerViewersInner implements Built<FileViewerViewersInner, FileViewerViewersInnerBuilder> {
  /// ID of the file app.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Type of the file app.
  @BuiltValueField(wireName: r'type')
  String? get type;

  /// Display name of the app, can be i18next key.
  @BuiltValueField(wireName: r'display_name')
  FileViewerViewersInnerDisplayNameEnum? get displayName;
  // enum displayNameEnum {  builtin,  wopi,  custom,  };

  /// Supported extensions.
  @BuiltValueField(wireName: r'exts')
  BuiltList<String>? get exts;

  /// Icon URL.
  @BuiltValueField(wireName: r'icon')
  String? get icon;

  /// Max supported size in bytes of the source file.
  @BuiltValueField(wireName: r'max_size')
  int? get maxSize;

  /// URL of embed iframe apps.
  @BuiltValueField(wireName: r'url')
  String? get url;

  FileViewerViewersInner._();

  factory FileViewerViewersInner([void updates(FileViewerViewersInnerBuilder b)]) = _$FileViewerViewersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileViewerViewersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileViewerViewersInner> get serializer => _$FileViewerViewersInnerSerializer();
}

class _$FileViewerViewersInnerSerializer implements PrimitiveSerializer<FileViewerViewersInner> {
  @override
  final Iterable<Type> types = const [FileViewerViewersInner, _$FileViewerViewersInner];

  @override
  final String wireName = r'FileViewerViewersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileViewerViewersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.displayName != null) {
      yield r'display_name';
      yield serializers.serialize(
        object.displayName,
        specifiedType: const FullType(FileViewerViewersInnerDisplayNameEnum),
      );
    }
    if (object.exts != null) {
      yield r'exts';
      yield serializers.serialize(
        object.exts,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(String),
      );
    }
    if (object.maxSize != null) {
      yield r'max_size';
      yield serializers.serialize(
        object.maxSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileViewerViewersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileViewerViewersInnerBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FileViewerViewersInnerDisplayNameEnum),
          ) as FileViewerViewersInnerDisplayNameEnum;
          result.displayName = valueDes;
          break;
        case r'exts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.exts.replace(valueDes);
          break;
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.icon = valueDes;
          break;
        case r'max_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxSize = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileViewerViewersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileViewerViewersInnerBuilder();
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

class FileViewerViewersInnerDisplayNameEnum extends EnumClass {

  /// Display name of the app, can be i18next key.
  @BuiltValueEnumConst(wireName: r'builtin')
  static const FileViewerViewersInnerDisplayNameEnum builtin = _$fileViewerViewersInnerDisplayNameEnum_builtin;
  /// Display name of the app, can be i18next key.
  @BuiltValueEnumConst(wireName: r'wopi')
  static const FileViewerViewersInnerDisplayNameEnum wopi = _$fileViewerViewersInnerDisplayNameEnum_wopi;
  /// Display name of the app, can be i18next key.
  @BuiltValueEnumConst(wireName: r'custom')
  static const FileViewerViewersInnerDisplayNameEnum custom = _$fileViewerViewersInnerDisplayNameEnum_custom;

  static Serializer<FileViewerViewersInnerDisplayNameEnum> get serializer => _$fileViewerViewersInnerDisplayNameEnumSerializer;

  const FileViewerViewersInnerDisplayNameEnum._(String name): super(name);

  static BuiltSet<FileViewerViewersInnerDisplayNameEnum> get values => _$fileViewerViewersInnerDisplayNameEnumValues;
  static FileViewerViewersInnerDisplayNameEnum valueOf(String name) => _$fileViewerViewersInnerDisplayNameEnumValueOf(name);
}

