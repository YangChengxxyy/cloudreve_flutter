// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigator_props.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NavigatorProps extends NavigatorProps {
  @override
  final String capability;
  @override
  final int maxPageSize;
  @override
  final BuiltList<String> orderByOptions;
  @override
  final BuiltList<String> orderDirectionOptions;

  factory _$NavigatorProps([void Function(NavigatorPropsBuilder)? updates]) =>
      (NavigatorPropsBuilder()..update(updates))._build();

  _$NavigatorProps._(
      {required this.capability,
      required this.maxPageSize,
      required this.orderByOptions,
      required this.orderDirectionOptions})
      : super._();
  @override
  NavigatorProps rebuild(void Function(NavigatorPropsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NavigatorPropsBuilder toBuilder() => NavigatorPropsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NavigatorProps &&
        capability == other.capability &&
        maxPageSize == other.maxPageSize &&
        orderByOptions == other.orderByOptions &&
        orderDirectionOptions == other.orderDirectionOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, capability.hashCode);
    _$hash = $jc(_$hash, maxPageSize.hashCode);
    _$hash = $jc(_$hash, orderByOptions.hashCode);
    _$hash = $jc(_$hash, orderDirectionOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NavigatorProps')
          ..add('capability', capability)
          ..add('maxPageSize', maxPageSize)
          ..add('orderByOptions', orderByOptions)
          ..add('orderDirectionOptions', orderDirectionOptions))
        .toString();
  }
}

class NavigatorPropsBuilder
    implements Builder<NavigatorProps, NavigatorPropsBuilder> {
  _$NavigatorProps? _$v;

  String? _capability;
  String? get capability => _$this._capability;
  set capability(String? capability) => _$this._capability = capability;

  int? _maxPageSize;
  int? get maxPageSize => _$this._maxPageSize;
  set maxPageSize(int? maxPageSize) => _$this._maxPageSize = maxPageSize;

  ListBuilder<String>? _orderByOptions;
  ListBuilder<String> get orderByOptions =>
      _$this._orderByOptions ??= ListBuilder<String>();
  set orderByOptions(ListBuilder<String>? orderByOptions) =>
      _$this._orderByOptions = orderByOptions;

  ListBuilder<String>? _orderDirectionOptions;
  ListBuilder<String> get orderDirectionOptions =>
      _$this._orderDirectionOptions ??= ListBuilder<String>();
  set orderDirectionOptions(ListBuilder<String>? orderDirectionOptions) =>
      _$this._orderDirectionOptions = orderDirectionOptions;

  NavigatorPropsBuilder() {
    NavigatorProps._defaults(this);
  }

  NavigatorPropsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capability = $v.capability;
      _maxPageSize = $v.maxPageSize;
      _orderByOptions = $v.orderByOptions.toBuilder();
      _orderDirectionOptions = $v.orderDirectionOptions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NavigatorProps other) {
    _$v = other as _$NavigatorProps;
  }

  @override
  void update(void Function(NavigatorPropsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NavigatorProps build() => _build();

  _$NavigatorProps _build() {
    _$NavigatorProps _$result;
    try {
      _$result = _$v ??
          _$NavigatorProps._(
            capability: BuiltValueNullFieldError.checkNotNull(
                capability, r'NavigatorProps', 'capability'),
            maxPageSize: BuiltValueNullFieldError.checkNotNull(
                maxPageSize, r'NavigatorProps', 'maxPageSize'),
            orderByOptions: orderByOptions.build(),
            orderDirectionOptions: orderDirectionOptions.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'orderByOptions';
        orderByOptions.build();
        _$failedField = 'orderDirectionOptions';
        orderDirectionOptions.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NavigatorProps', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
