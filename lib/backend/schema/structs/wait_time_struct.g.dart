// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wait_time_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WaitTimeStruct> _$waitTimeStructSerializer =
    new _$WaitTimeStructSerializer();

class _$WaitTimeStructSerializer
    implements StructuredSerializer<WaitTimeStruct> {
  @override
  final Iterable<Type> types = const [WaitTimeStruct, _$WaitTimeStruct];
  @override
  final String wireName = 'WaitTimeStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, WaitTimeStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.maxWaitTime;
    if (value != null) {
      result
        ..add('max_wait_time')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.minWaitTime;
    if (value != null) {
      result
        ..add('min_wait_time')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  WaitTimeStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WaitTimeStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'max_wait_time':
          result.maxWaitTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'min_wait_time':
          result.minWaitTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$WaitTimeStruct extends WaitTimeStruct {
  @override
  final int? maxWaitTime;
  @override
  final int? minWaitTime;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$WaitTimeStruct([void Function(WaitTimeStructBuilder)? updates]) =>
      (new WaitTimeStructBuilder()..update(updates))._build();

  _$WaitTimeStruct._(
      {this.maxWaitTime, this.minWaitTime, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'WaitTimeStruct', 'firestoreUtilData');
  }

  @override
  WaitTimeStruct rebuild(void Function(WaitTimeStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WaitTimeStructBuilder toBuilder() =>
      new WaitTimeStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WaitTimeStruct &&
        maxWaitTime == other.maxWaitTime &&
        minWaitTime == other.minWaitTime &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, maxWaitTime.hashCode), minWaitTime.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WaitTimeStruct')
          ..add('maxWaitTime', maxWaitTime)
          ..add('minWaitTime', minWaitTime)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class WaitTimeStructBuilder
    implements Builder<WaitTimeStruct, WaitTimeStructBuilder> {
  _$WaitTimeStruct? _$v;

  int? _maxWaitTime;
  int? get maxWaitTime => _$this._maxWaitTime;
  set maxWaitTime(int? maxWaitTime) => _$this._maxWaitTime = maxWaitTime;

  int? _minWaitTime;
  int? get minWaitTime => _$this._minWaitTime;
  set minWaitTime(int? minWaitTime) => _$this._minWaitTime = minWaitTime;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  WaitTimeStructBuilder() {
    WaitTimeStruct._initializeBuilder(this);
  }

  WaitTimeStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxWaitTime = $v.maxWaitTime;
      _minWaitTime = $v.minWaitTime;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WaitTimeStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WaitTimeStruct;
  }

  @override
  void update(void Function(WaitTimeStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WaitTimeStruct build() => _build();

  _$WaitTimeStruct _build() {
    final _$result = _$v ??
        new _$WaitTimeStruct._(
            maxWaitTime: maxWaitTime,
            minWaitTime: minWaitTime,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'WaitTimeStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
