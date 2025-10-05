//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group.g.dart';

/// Group
///
/// Properties:
/// * [id] - ID of the group.
/// * [name] - Name of the group.
/// * [permission] - Permission boolset of the group. Refer to [Boolset](https://docs.cloudreve.org/api/boolset) for how to read it.
/// * [directLinkBatchSize] - The maximum number of files allowed for users to obtain direct links in a single batch, fill in 0 means no batch generation of direct links is allowed.
/// * [trashRetention] - The retention time in seconds of files in the trash bin, files will be permanently deleted after the expiration time. Changing this setting will not affect files already in the trash bin.
@BuiltValue()
abstract class Group implements Built<Group, GroupBuilder> {
  /// ID of the group.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Name of the group.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Permission boolset of the group. Refer to [Boolset](https://docs.cloudreve.org/api/boolset) for how to read it.
  @BuiltValueField(wireName: r'permission')
  String? get permission;

  /// The maximum number of files allowed for users to obtain direct links in a single batch, fill in 0 means no batch generation of direct links is allowed.
  @BuiltValueField(wireName: r'direct_link_batch_size')
  int? get directLinkBatchSize;

  /// The retention time in seconds of files in the trash bin, files will be permanently deleted after the expiration time. Changing this setting will not affect files already in the trash bin.
  @BuiltValueField(wireName: r'trash_retention')
  int? get trashRetention;

  Group._();

  factory Group([void updates(GroupBuilder b)]) = _$Group;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Group> get serializer => _$GroupSerializer();
}

class _$GroupSerializer implements PrimitiveSerializer<Group> {
  @override
  final Iterable<Type> types = const [Group, _$Group];

  @override
  final String wireName = r'Group';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Group object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
        specifiedType: const FullType(String),
      );
    }
    if (object.directLinkBatchSize != null) {
      yield r'direct_link_batch_size';
      yield serializers.serialize(
        object.directLinkBatchSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.trashRetention != null) {
      yield r'trash_retention';
      yield serializers.serialize(
        object.trashRetention,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Group object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GroupBuilder result,
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
            specifiedType: const FullType(String),
          ) as String;
          result.permission = valueDes;
          break;
        case r'direct_link_batch_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.directLinkBatchSize = valueDes;
          break;
        case r'trash_retention':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.trashRetention = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Group deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupBuilder();
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

