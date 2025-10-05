//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_content_put200_response_data.g.dart';

/// Response content. In some error type, e.g. lock conflicting errors, this field wil present details of the error, e.g. who is locking the current file.
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
abstract class FileContentPut200ResponseData implements Built<FileContentPut200ResponseData, FileContentPut200ResponseDataBuilder> {
  /// Type of this file.
  @BuiltValueField(wireName: r'type')
  FileContentPut200ResponseDataTypeEnum? get type;
  // enum typeEnum {  0,  1,  };

  /// ID of this file.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Name of this file.   It might not be expected display name. For files under trash bin, this field is a non-readable UUID. The expected display name should be retrieved from `metadata` with name `sys:restore_uri`, which can be parsed as a [URI](https://docs.cloudreve.org/api/file-uri).
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// [Boolset](https://docs.cloudreve.org/api/boolset) encoded permissions granted by current authenticated user. For `null`, all permissions are granted. Permission definition can be found at [File Permissions](https://docs.cloudreve.org/api/boolset#file-permission)
  @BuiltValueField(wireName: r'permission')
  String? get permission;

  /// Datetime when the file is created.
  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  /// Datetime when the file is last updated.
  @BuiltValueField(wireName: r'updated_at')
  DateTime? get updatedAt;

  /// Size of the file, also the size of current primary version blob.
  @BuiltValueField(wireName: r'size')
  int? get size;

  /// [URI](https://docs.cloudreve.org/api/file-uri) of this file.
  @BuiltValueField(wireName: r'path')
  String? get path;

  /// Whether this file has share links.
  @BuiltValueField(wireName: r'shared')
  bool? get shared;

  /// [Boolset](https://docs.cloudreve.org/api/boolset) encoded set of capabilities supported.
  @BuiltValueField(wireName: r'capability')
  String? get capability;

  /// Whether this file is owned by current authenticated user.
  @BuiltValueField(wireName: r'owned')
  bool? get owned;

  /// ID of the primary version blob.
  @BuiltValueField(wireName: r'primary_entity')
  String? get primaryEntity;

  FileContentPut200ResponseData._();

  factory FileContentPut200ResponseData([void updates(FileContentPut200ResponseDataBuilder b)]) = _$FileContentPut200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileContentPut200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileContentPut200ResponseData> get serializer => _$FileContentPut200ResponseDataSerializer();
}

class _$FileContentPut200ResponseDataSerializer implements PrimitiveSerializer<FileContentPut200ResponseData> {
  @override
  final Iterable<Type> types = const [FileContentPut200ResponseData, _$FileContentPut200ResponseData];

  @override
  final String wireName = r'FileContentPut200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileContentPut200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(FileContentPut200ResponseDataTypeEnum),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
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
    if (object.permission != null) {
      yield r'permission';
      yield serializers.serialize(
        object.permission,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updated_at';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.owned != null) {
      yield r'owned';
      yield serializers.serialize(
        object.owned,
        specifiedType: const FullType(bool),
      );
    }
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
    FileContentPut200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileContentPut200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FileContentPut200ResponseDataTypeEnum),
          ) as FileContentPut200ResponseDataTypeEnum;
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
  FileContentPut200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileContentPut200ResponseDataBuilder();
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

class FileContentPut200ResponseDataTypeEnum extends EnumClass {

  /// Type of this file.
  @BuiltValueEnumConst(wireNumber: 0)
  static const FileContentPut200ResponseDataTypeEnum number0 = _$fileContentPut200ResponseDataTypeEnum_number0;
  /// Type of this file.
  @BuiltValueEnumConst(wireNumber: 1)
  static const FileContentPut200ResponseDataTypeEnum number1 = _$fileContentPut200ResponseDataTypeEnum_number1;

  static Serializer<FileContentPut200ResponseDataTypeEnum> get serializer => _$fileContentPut200ResponseDataTypeEnumSerializer;

  const FileContentPut200ResponseDataTypeEnum._(String name): super(name);

  static BuiltSet<FileContentPut200ResponseDataTypeEnum> get values => _$fileContentPut200ResponseDataTypeEnumValues;
  static FileContentPut200ResponseDataTypeEnum valueOf(String name) => _$fileContentPut200ResponseDataTypeEnumValueOf(name);
}

