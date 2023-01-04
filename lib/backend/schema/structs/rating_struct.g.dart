// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RatingStruct> _$ratingStructSerializer =
    new _$RatingStructSerializer();

class _$RatingStructSerializer implements StructuredSerializer<RatingStruct> {
  @override
  final Iterable<Type> types = const [RatingStruct, _$RatingStruct];
  @override
  final String wireName = 'RatingStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, RatingStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RatingStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RatingStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$RatingStruct extends RatingStruct {
  @override
  final double? value;
  @override
  final String? description;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$RatingStruct([void Function(RatingStructBuilder)? updates]) =>
      (new RatingStructBuilder()..update(updates))._build();

  _$RatingStruct._(
      {this.value, this.description, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'RatingStruct', 'firestoreUtilData');
  }

  @override
  RatingStruct rebuild(void Function(RatingStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingStructBuilder toBuilder() => new RatingStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatingStruct &&
        value == other.value &&
        description == other.description &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, value.hashCode), description.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RatingStruct')
          ..add('value', value)
          ..add('description', description)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class RatingStructBuilder
    implements Builder<RatingStruct, RatingStructBuilder> {
  _$RatingStruct? _$v;

  double? _value;
  double? get value => _$this._value;
  set value(double? value) => _$this._value = value;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  RatingStructBuilder() {
    RatingStruct._initializeBuilder(this);
  }

  RatingStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _description = $v.description;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatingStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RatingStruct;
  }

  @override
  void update(void Function(RatingStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RatingStruct build() => _build();

  _$RatingStruct _build() {
    final _$result = _$v ??
        new _$RatingStruct._(
            value: value,
            description: description,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'RatingStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
