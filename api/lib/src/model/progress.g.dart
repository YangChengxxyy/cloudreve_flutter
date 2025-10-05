// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Progress extends Progress {
  @override
  final int? total;
  @override
  final int? current;
  @override
  final String? identifier;

  factory _$Progress([void Function(ProgressBuilder)? updates]) =>
      (ProgressBuilder()..update(updates))._build();

  _$Progress._({this.total, this.current, this.identifier}) : super._();
  @override
  Progress rebuild(void Function(ProgressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProgressBuilder toBuilder() => ProgressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Progress &&
        total == other.total &&
        current == other.current &&
        identifier == other.identifier;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, current.hashCode);
    _$hash = $jc(_$hash, identifier.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Progress')
          ..add('total', total)
          ..add('current', current)
          ..add('identifier', identifier))
        .toString();
  }
}

class ProgressBuilder implements Builder<Progress, ProgressBuilder> {
  _$Progress? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _current;
  int? get current => _$this._current;
  set current(int? current) => _$this._current = current;

  String? _identifier;
  String? get identifier => _$this._identifier;
  set identifier(String? identifier) => _$this._identifier = identifier;

  ProgressBuilder() {
    Progress._defaults(this);
  }

  ProgressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _current = $v.current;
      _identifier = $v.identifier;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Progress other) {
    _$v = other as _$Progress;
  }

  @override
  void update(void Function(ProgressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Progress build() => _build();

  _$Progress _build() {
    final _$result = _$v ??
        _$Progress._(
          total: total,
          current: current,
          identifier: identifier,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
