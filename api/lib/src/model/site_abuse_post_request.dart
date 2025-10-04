//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_abuse_post_request.g.dart';

/// SiteAbusePostRequest
///
/// Properties:
/// * [captcha] - User input value of the graphical CAPTCHA. Required if graphic CAPTCHA enabled for current action.
/// * [ticket] - Ticket/Token of the CAPTCHA. Required if CAPTCHA is enabled for current action. Can be obtained from [Get CAPTCHA](https://cloudrevev4.apifox.cn/get-captcha-289470260e0.md).
/// * [fileUri] - If reporting target is a share link, this should be the [URI](https://docs.cloudreve.org/api/file-uri) of the folder in which user submitted the report.
/// * [category] - Category of the report.
/// * [description] - Additional descriptions.
/// * [shareId] - ID of the reporting share link. Must be omitted if `user_id` is set.
/// * [userId] - ID of the reporting user. Must be omitted if `share_id` is set.
@BuiltValue()
abstract class SiteAbusePostRequest implements Built<SiteAbusePostRequest, SiteAbusePostRequestBuilder> {
  /// User input value of the graphical CAPTCHA. Required if graphic CAPTCHA enabled for current action.
  @BuiltValueField(wireName: r'captcha')
  String? get captcha;

  /// Ticket/Token of the CAPTCHA. Required if CAPTCHA is enabled for current action. Can be obtained from [Get CAPTCHA](https://cloudrevev4.apifox.cn/get-captcha-289470260e0.md).
  @BuiltValueField(wireName: r'ticket')
  String? get ticket;

  /// If reporting target is a share link, this should be the [URI](https://docs.cloudreve.org/api/file-uri) of the folder in which user submitted the report.
  @BuiltValueField(wireName: r'file_uri')
  String? get fileUri;

  /// Category of the report.
  @BuiltValueField(wireName: r'category')
  SiteAbusePostRequestCategoryEnum get category;
  // enum categoryEnum {  0,  1,  2,  3,  };

  /// Additional descriptions.
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// ID of the reporting share link. Must be omitted if `user_id` is set.
  @BuiltValueField(wireName: r'share_id')
  String? get shareId;

  /// ID of the reporting user. Must be omitted if `share_id` is set.
  @BuiltValueField(wireName: r'user_id')
  String? get userId;

  SiteAbusePostRequest._();

  factory SiteAbusePostRequest([void updates(SiteAbusePostRequestBuilder b)]) = _$SiteAbusePostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SiteAbusePostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SiteAbusePostRequest> get serializer => _$SiteAbusePostRequestSerializer();
}

class _$SiteAbusePostRequestSerializer implements PrimitiveSerializer<SiteAbusePostRequest> {
  @override
  final Iterable<Type> types = const [SiteAbusePostRequest, _$SiteAbusePostRequest];

  @override
  final String wireName = r'SiteAbusePostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SiteAbusePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.captcha != null) {
      yield r'captcha';
      yield serializers.serialize(
        object.captcha,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ticket != null) {
      yield r'ticket';
      yield serializers.serialize(
        object.ticket,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.fileUri != null) {
      yield r'file_uri';
      yield serializers.serialize(
        object.fileUri,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'category';
    yield serializers.serialize(
      object.category,
      specifiedType: const FullType(SiteAbusePostRequestCategoryEnum),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.shareId != null) {
      yield r'share_id';
      yield serializers.serialize(
        object.shareId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.userId != null) {
      yield r'user_id';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SiteAbusePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SiteAbusePostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'captcha':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.captcha = valueDes;
          break;
        case r'ticket':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ticket = valueDes;
          break;
        case r'file_uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fileUri = valueDes;
          break;
        case r'category':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SiteAbusePostRequestCategoryEnum),
          ) as SiteAbusePostRequestCategoryEnum;
          result.category = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'share_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shareId = valueDes;
          break;
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SiteAbusePostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SiteAbusePostRequestBuilder();
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

class SiteAbusePostRequestCategoryEnum extends EnumClass {

  /// Category of the report.
  @BuiltValueEnumConst(wireName: r'0')
  static const SiteAbusePostRequestCategoryEnum n0 = _$siteAbusePostRequestCategoryEnum_n0;
  /// Category of the report.
  @BuiltValueEnumConst(wireName: r'1')
  static const SiteAbusePostRequestCategoryEnum n1 = _$siteAbusePostRequestCategoryEnum_n1;
  /// Category of the report.
  @BuiltValueEnumConst(wireName: r'2')
  static const SiteAbusePostRequestCategoryEnum n2 = _$siteAbusePostRequestCategoryEnum_n2;
  /// Category of the report.
  @BuiltValueEnumConst(wireName: r'3')
  static const SiteAbusePostRequestCategoryEnum n3 = _$siteAbusePostRequestCategoryEnum_n3;

  static Serializer<SiteAbusePostRequestCategoryEnum> get serializer => _$siteAbusePostRequestCategoryEnumSerializer;

  const SiteAbusePostRequestCategoryEnum._(String name): super(name);

  static BuiltSet<SiteAbusePostRequestCategoryEnum> get values => _$siteAbusePostRequestCategoryEnumValues;
  static SiteAbusePostRequestCategoryEnum valueOf(String name) => _$siteAbusePostRequestCategoryEnumValueOf(name);
}

