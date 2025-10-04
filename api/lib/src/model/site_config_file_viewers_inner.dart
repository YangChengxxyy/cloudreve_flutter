//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/file_viewer.dart';
import 'package:cloudreve_api_client/src/model/file_viewer_viewers_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'site_config_file_viewers_inner.g.dart';

/// SiteConfigFileViewersInner
///
/// Properties:
/// * [viewers] 
@BuiltValue()
abstract class SiteConfigFileViewersInner implements Built<SiteConfigFileViewersInner, SiteConfigFileViewersInnerBuilder> {
  /// Any Of [FileViewer]
  AnyOf get anyOf;

  SiteConfigFileViewersInner._();

  factory SiteConfigFileViewersInner([void updates(SiteConfigFileViewersInnerBuilder b)]) = _$SiteConfigFileViewersInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SiteConfigFileViewersInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SiteConfigFileViewersInner> get serializer => _$SiteConfigFileViewersInnerSerializer();
}

class _$SiteConfigFileViewersInnerSerializer implements PrimitiveSerializer<SiteConfigFileViewersInner> {
  @override
  final Iterable<Type> types = const [SiteConfigFileViewersInner, _$SiteConfigFileViewersInner];

  @override
  final String wireName = r'SiteConfigFileViewersInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SiteConfigFileViewersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    SiteConfigFileViewersInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  SiteConfigFileViewersInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SiteConfigFileViewersInnerBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType.nullable(FileViewer), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

