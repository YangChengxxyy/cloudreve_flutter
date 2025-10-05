//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'log_entry.g.dart';

/// LogEntry
///
/// Properties:
/// * [category] - Category of this log. Definition can be found in [`explorer.ts`](https://github.com/cloudreve/frontend/blob/master/src/api/explorer.ts#L20).
/// * [exts] - Extra key-value props.
/// * [originalName] - Original name of the file in renaming operation.
/// * [newName] - New name of the file in renaming operation.
/// * [from] - URI of the source file.
/// * [to] - URI of the destination file.
/// * [entityCreateTime] - Entity creation datetime.
/// * [storagePolicyId] - ID of the correlated storage policy.
/// * [storagePolicy] - Name of the correlated storage policy.
@BuiltValue()
abstract class LogEntry implements Built<LogEntry, LogEntryBuilder> {
  /// Category of this log. Definition can be found in [`explorer.ts`](https://github.com/cloudreve/frontend/blob/master/src/api/explorer.ts#L20).
  @BuiltValueField(wireName: r'category')
  int? get category;

  /// Extra key-value props.
  @BuiltValueField(wireName: r'exts')
  BuiltMap<String, JsonObject?>? get exts;

  /// Original name of the file in renaming operation.
  @BuiltValueField(wireName: r'original_name')
  String? get originalName;

  /// New name of the file in renaming operation.
  @BuiltValueField(wireName: r'new_name')
  String? get newName;

  /// URI of the source file.
  @BuiltValueField(wireName: r'from')
  String? get from;

  /// URI of the destination file.
  @BuiltValueField(wireName: r'to')
  String? get to;

  /// Entity creation datetime.
  @BuiltValueField(wireName: r'entity_create_time')
  DateTime? get entityCreateTime;

  /// ID of the correlated storage policy.
  @BuiltValueField(wireName: r'storage_policy_id')
  String? get storagePolicyId;

  /// Name of the correlated storage policy.
  @BuiltValueField(wireName: r'storage_policy')
  String? get storagePolicy;

  LogEntry._();

  factory LogEntry([void updates(LogEntryBuilder b)]) = _$LogEntry;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LogEntryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LogEntry> get serializer => _$LogEntrySerializer();
}

class _$LogEntrySerializer implements PrimitiveSerializer<LogEntry> {
  @override
  final Iterable<Type> types = const [LogEntry, _$LogEntry];

  @override
  final String wireName = r'LogEntry';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LogEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.category != null) {
      yield r'category';
      yield serializers.serialize(
        object.category,
        specifiedType: const FullType(int),
      );
    }
    if (object.exts != null) {
      yield r'exts';
      yield serializers.serialize(
        object.exts,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
    if (object.originalName != null) {
      yield r'original_name';
      yield serializers.serialize(
        object.originalName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.newName != null) {
      yield r'new_name';
      yield serializers.serialize(
        object.newName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.from != null) {
      yield r'from';
      yield serializers.serialize(
        object.from,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.to != null) {
      yield r'to';
      yield serializers.serialize(
        object.to,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.entityCreateTime != null) {
      yield r'entity_create_time';
      yield serializers.serialize(
        object.entityCreateTime,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.storagePolicyId != null) {
      yield r'storage_policy_id';
      yield serializers.serialize(
        object.storagePolicyId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.storagePolicy != null) {
      yield r'storage_policy';
      yield serializers.serialize(
        object.storagePolicy,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LogEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LogEntryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.category = valueDes;
          break;
        case r'exts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.exts.replace(valueDes);
          break;
        case r'original_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.originalName = valueDes;
          break;
        case r'new_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.newName = valueDes;
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.from = valueDes;
          break;
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.to = valueDes;
          break;
        case r'entity_create_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.entityCreateTime = valueDes;
          break;
        case r'storage_policy_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.storagePolicyId = valueDes;
          break;
        case r'storage_policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.storagePolicy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LogEntry deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LogEntryBuilder();
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

