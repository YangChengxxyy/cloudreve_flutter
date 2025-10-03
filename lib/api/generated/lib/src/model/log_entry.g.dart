// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LogEntry extends LogEntry {
  @override
  final int category;
  @override
  final BuiltMap<String, JsonObject?>? exts;
  @override
  final String? originalName;
  @override
  final String? newName;
  @override
  final String? from;
  @override
  final String? to;
  @override
  final DateTime? entityCreateTime;
  @override
  final String? storagePolicyId;
  @override
  final String? storagePolicy;

  factory _$LogEntry([void Function(LogEntryBuilder)? updates]) =>
      (LogEntryBuilder()..update(updates))._build();

  _$LogEntry._(
      {required this.category,
      this.exts,
      this.originalName,
      this.newName,
      this.from,
      this.to,
      this.entityCreateTime,
      this.storagePolicyId,
      this.storagePolicy})
      : super._();
  @override
  LogEntry rebuild(void Function(LogEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogEntryBuilder toBuilder() => LogEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogEntry &&
        category == other.category &&
        exts == other.exts &&
        originalName == other.originalName &&
        newName == other.newName &&
        from == other.from &&
        to == other.to &&
        entityCreateTime == other.entityCreateTime &&
        storagePolicyId == other.storagePolicyId &&
        storagePolicy == other.storagePolicy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, exts.hashCode);
    _$hash = $jc(_$hash, originalName.hashCode);
    _$hash = $jc(_$hash, newName.hashCode);
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jc(_$hash, entityCreateTime.hashCode);
    _$hash = $jc(_$hash, storagePolicyId.hashCode);
    _$hash = $jc(_$hash, storagePolicy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LogEntry')
          ..add('category', category)
          ..add('exts', exts)
          ..add('originalName', originalName)
          ..add('newName', newName)
          ..add('from', from)
          ..add('to', to)
          ..add('entityCreateTime', entityCreateTime)
          ..add('storagePolicyId', storagePolicyId)
          ..add('storagePolicy', storagePolicy))
        .toString();
  }
}

class LogEntryBuilder implements Builder<LogEntry, LogEntryBuilder> {
  _$LogEntry? _$v;

  int? _category;
  int? get category => _$this._category;
  set category(int? category) => _$this._category = category;

  MapBuilder<String, JsonObject?>? _exts;
  MapBuilder<String, JsonObject?> get exts =>
      _$this._exts ??= MapBuilder<String, JsonObject?>();
  set exts(MapBuilder<String, JsonObject?>? exts) => _$this._exts = exts;

  String? _originalName;
  String? get originalName => _$this._originalName;
  set originalName(String? originalName) => _$this._originalName = originalName;

  String? _newName;
  String? get newName => _$this._newName;
  set newName(String? newName) => _$this._newName = newName;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  DateTime? _entityCreateTime;
  DateTime? get entityCreateTime => _$this._entityCreateTime;
  set entityCreateTime(DateTime? entityCreateTime) =>
      _$this._entityCreateTime = entityCreateTime;

  String? _storagePolicyId;
  String? get storagePolicyId => _$this._storagePolicyId;
  set storagePolicyId(String? storagePolicyId) =>
      _$this._storagePolicyId = storagePolicyId;

  String? _storagePolicy;
  String? get storagePolicy => _$this._storagePolicy;
  set storagePolicy(String? storagePolicy) =>
      _$this._storagePolicy = storagePolicy;

  LogEntryBuilder() {
    LogEntry._defaults(this);
  }

  LogEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _category = $v.category;
      _exts = $v.exts?.toBuilder();
      _originalName = $v.originalName;
      _newName = $v.newName;
      _from = $v.from;
      _to = $v.to;
      _entityCreateTime = $v.entityCreateTime;
      _storagePolicyId = $v.storagePolicyId;
      _storagePolicy = $v.storagePolicy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogEntry other) {
    _$v = other as _$LogEntry;
  }

  @override
  void update(void Function(LogEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LogEntry build() => _build();

  _$LogEntry _build() {
    _$LogEntry _$result;
    try {
      _$result = _$v ??
          _$LogEntry._(
            category: BuiltValueNullFieldError.checkNotNull(
                category, r'LogEntry', 'category'),
            exts: _exts?.build(),
            originalName: originalName,
            newName: newName,
            from: from,
            to: to,
            entityCreateTime: entityCreateTime,
            storagePolicyId: storagePolicyId,
            storagePolicy: storagePolicy,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exts';
        _exts?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'LogEntry', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
