// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_response_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaskResponseSummary extends TaskResponseSummary {
  @override
  final String phase;
  @override
  final BuiltMap<String, String> props;

  factory _$TaskResponseSummary(
          [void Function(TaskResponseSummaryBuilder)? updates]) =>
      (TaskResponseSummaryBuilder()..update(updates))._build();

  _$TaskResponseSummary._({required this.phase, required this.props})
      : super._();
  @override
  TaskResponseSummary rebuild(
          void Function(TaskResponseSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskResponseSummaryBuilder toBuilder() =>
      TaskResponseSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskResponseSummary &&
        phase == other.phase &&
        props == other.props;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phase.hashCode);
    _$hash = $jc(_$hash, props.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TaskResponseSummary')
          ..add('phase', phase)
          ..add('props', props))
        .toString();
  }
}

class TaskResponseSummaryBuilder
    implements Builder<TaskResponseSummary, TaskResponseSummaryBuilder> {
  _$TaskResponseSummary? _$v;

  String? _phase;
  String? get phase => _$this._phase;
  set phase(String? phase) => _$this._phase = phase;

  MapBuilder<String, String>? _props;
  MapBuilder<String, String> get props =>
      _$this._props ??= MapBuilder<String, String>();
  set props(MapBuilder<String, String>? props) => _$this._props = props;

  TaskResponseSummaryBuilder() {
    TaskResponseSummary._defaults(this);
  }

  TaskResponseSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phase = $v.phase;
      _props = $v.props.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskResponseSummary other) {
    _$v = other as _$TaskResponseSummary;
  }

  @override
  void update(void Function(TaskResponseSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TaskResponseSummary build() => _build();

  _$TaskResponseSummary _build() {
    _$TaskResponseSummary _$result;
    try {
      _$result = _$v ??
          _$TaskResponseSummary._(
            phase: BuiltValueNullFieldError.checkNotNull(
                phase, r'TaskResponseSummary', 'phase'),
            props: props.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'props';
        props.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TaskResponseSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
