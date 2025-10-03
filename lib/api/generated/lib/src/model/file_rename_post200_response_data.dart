//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_rename_post200_response_data.g.dart';

/// Response content
///
/// Properties:
/// * [type] - Type of this file.
/// * [id] - ID of this file.
/// * [name] - Name of this file.   It might not be expected display name. For files under trash bin, this field is a non-readable UUID. The expected display name should be retrieved from `metadata` with name `sys:restore_uri`, which can be parsed as a [URI](https://docs.cloudreve.org/api/file-uri).
/// * [permission] - [Boolset](https://docs.cloudreve.org/api/boolset) encoded permissions granted by current authenticated user. For `null`, all permissions are granted. Permission definition can be found at [File Permissions](https://docs.cloudreve.org/api/boolset#file-permission)
/// * [createdAt] - Datetime when the file is created.
/// * [updatedAt] - Datetime when the file is last updated.
/// * [size] - Size of the file, also the size of current primary version blob.
/// * [path] - [URI](https://docs.cloudreve.org/api/file-uri) of this file.
/// * [shared] - Whether this file has share links.
/// * [capability] - [Boolset](https://docs.cloudreve.org/api/boolset) encoded set of capabilities supported.
/// * [owned] - Whether this file is owned by current authenticated user.
/// * [primaryEntity] - ID of the primary version blob.
@BuiltValue()
abstract class FileRenamePost200ResponseData implements Built<FileRenamePost200ResponseData, FileRenamePost200ResponseDataBuilder> {
  /// Type of this file.
  @BuiltValueField(wireName: r'type')
  FileRenamePost200ResponseDataTypeEnum get type;
  // enum typeEnum {  0,  1,  };

  /// ID of this file.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Name of this file.   It might not be expected display name. For files under trash bin, this field is a non-readable UUID. The expected display name should be retrieved from `metadata` with name `sys:restore_uri`, which can be parsed as a [URI](https://docs.cloudreve.org/api/file-uri).
  @BuiltValueField(wireName: r'name')
  String get name;

  /// [Boolset](https://docs.cloudreve.org/api/boolset) encoded permissions granted by current authenticated user. For `null`, all permissions are granted. Permission definition can be found at [File Permissions](https://docs.cloudreve.org/api/boolset#file-permission)
  @BuiltValueField(wireName: r'permission')
  String? get permission;

  /// Datetime when the file is created.
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// Datetime when the file is last updated.
  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  /// Size of the file, also the size of current primary version blob.
  @BuiltValueField(wireName: r'size')
  int get size;

  /// [URI](https://docs.cloudreve.org/api/file-uri) of this file.
  @BuiltValueField(wireName: r'path')
  String get path;

  /// Whether this file has share links.
  @BuiltValueField(wireName: r'shared')
  bool? get shared;

  /// [Boolset](https://docs.cloudreve.org/api/boolset) encoded set of capabilities supported.
  @BuiltValueField(wireName: r'capability')
  String? get capability;

  /// Whether this file is owned by current authenticated user.
  @BuiltValueField(wireName: r'owned')
  bool get owned;

  /// ID of the primary version blob.
  @BuiltValueField(wireName: r'primary_entity')
  String? get primaryEntity;

  FileRenamePost200ResponseData._();

  factory FileRenamePost200ResponseData([void updates(FileRenamePost200ResponseDataBuilder b)]) = _$FileRenamePost200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileRenamePost200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileRenamePost200ResponseData> get serializer => _$FileRenamePost200ResponseDataSerializer();
}

class _$FileRenamePost200ResponseDataSerializer implements PrimitiveSerializer<FileRenamePost200ResponseData> {
  @override
  final Iterable<Type> types = const [FileRenamePost200ResponseData, _$FileRenamePost200ResponseData];

  @override
  final String wireName = r'FileRenamePost200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileRenamePost200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(FileRenamePost200ResponseDataTypeEnum),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.permission != null) {
      yield r'permission';
      yield serializers.serialize(
        object.permission,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'size';
    yield serializers.serialize(
      object.size,
      specifiedType: const FullType(int),
    );
    yield r'path';
    yield serializers.serialize(
      object.path,
      specifiedType: const FullType(String),
    );
    if (object.shared != null) {
      yield r'shared';
      yield serializers.serialize(
        object.shared,
        specifiedType: const FullType(bool),
      );
    }
    if (object.capability != null) {
      yield r'capability';
      yield serializers.serialize(
        object.capability,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'owned';
    yield serializers.serialize(
      object.owned,
      specifiedType: const FullType(bool),
    );
    if (object.primaryEntity != null) {
      yield r'primary_entity';
      yield serializers.serialize(
        object.primaryEntity,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileRenamePost200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileRenamePost200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FileRenamePost200ResponseDataTypeEnum),
          ) as FileRenamePost200ResponseDataTypeEnum;
          result.type = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'permission':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.permission = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'shared':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.shared = valueDes;
          break;
        case r'capability':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.capability = valueDes;
          break;
        case r'owned':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.owned = valueDes;
          break;
        case r'primary_entity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.primaryEntity = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileRenamePost200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileRenamePost200ResponseDataBuilder();
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

class FileRenamePost200ResponseDataTypeEnum extends EnumClass {

  /// Type of this file.
  @BuiltValueEnumConst(wireNumber: 0)
  static const FileRenamePost200ResponseDataTypeEnum number0 = _$fileRenamePost200ResponseDataTypeEnum_number0;
  /// Type of this file.
  @BuiltValueEnumConst(wireNumber: 1)
  static const FileRenamePost200ResponseDataTypeEnum number1 = _$fileRenamePost200ResponseDataTypeEnum_number1;

  static Serializer<FileRenamePost200ResponseDataTypeEnum> get serializer => _$fileRenamePost200ResponseDataTypeEnumSerializer;

  const FileRenamePost200ResponseDataTypeEnum._(String name): super(name);

  static BuiltSet<FileRenamePost200ResponseDataTypeEnum> get values => _$fileRenamePost200ResponseDataTypeEnumValues;
  static FileRenamePost200ResponseDataTypeEnum valueOf(String name) => _$fileRenamePost200ResponseDataTypeEnumValueOf(name);
}

