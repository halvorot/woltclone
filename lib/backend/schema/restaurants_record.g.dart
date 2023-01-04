// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurants_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RestaurantsRecord> _$restaurantsRecordSerializer =
    new _$RestaurantsRecordSerializer();

class _$RestaurantsRecordSerializer
    implements StructuredSerializer<RestaurantsRecord> {
  @override
  final Iterable<Type> types = const [RestaurantsRecord, _$RestaurantsRecord];
  @override
  final String wireName = 'RestaurantsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RestaurantsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'wait_time',
      serializers.serialize(object.waitTime,
          specifiedType: const FullType(WaitTimeStruct)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.modifiedAt;
    if (value != null) {
      result
        ..add('modified_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.categories;
    if (value != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.openingTime;
    if (value != null) {
      result
        ..add('opening_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.closingTime;
    if (value != null) {
      result
        ..add('closing_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.minimumOrderSum;
    if (value != null) {
      result
        ..add('minimum_order_sum')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.deliveryFee;
    if (value != null) {
      result
        ..add('delivery_fee')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ratings;
    if (value != null) {
      result
        ..add('ratings')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(RatingStruct)])));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('cover_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.keywords;
    if (value != null) {
      result
        ..add('keywords')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  RestaurantsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RestaurantsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'modified_at':
          result.modifiedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'opening_time':
          result.openingTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'closing_time':
          result.closingTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'minimum_order_sum':
          result.minimumOrderSum = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'delivery_fee':
          result.deliveryFee = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'wait_time':
          result.waitTime.replace(serializers.deserialize(value,
                  specifiedType: const FullType(WaitTimeStruct))!
              as WaitTimeStruct);
          break;
        case 'ratings':
          result.ratings.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RatingStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'cover_image':
          result.coverImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'keywords':
          result.keywords.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$RestaurantsRecord extends RestaurantsRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? modifiedAt;
  @override
  final BuiltList<String>? categories;
  @override
  final DateTime? openingTime;
  @override
  final DateTime? closingTime;
  @override
  final LatLng? location;
  @override
  final int? minimumOrderSum;
  @override
  final int? deliveryFee;
  @override
  final WaitTimeStruct waitTime;
  @override
  final BuiltList<RatingStruct>? ratings;
  @override
  final String? coverImage;
  @override
  final BuiltList<String>? keywords;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RestaurantsRecord(
          [void Function(RestaurantsRecordBuilder)? updates]) =>
      (new RestaurantsRecordBuilder()..update(updates))._build();

  _$RestaurantsRecord._(
      {this.name,
      this.description,
      this.createdAt,
      this.modifiedAt,
      this.categories,
      this.openingTime,
      this.closingTime,
      this.location,
      this.minimumOrderSum,
      this.deliveryFee,
      required this.waitTime,
      this.ratings,
      this.coverImage,
      this.keywords,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        waitTime, r'RestaurantsRecord', 'waitTime');
  }

  @override
  RestaurantsRecord rebuild(void Function(RestaurantsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestaurantsRecordBuilder toBuilder() =>
      new RestaurantsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantsRecord &&
        name == other.name &&
        description == other.description &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt &&
        categories == other.categories &&
        openingTime == other.openingTime &&
        closingTime == other.closingTime &&
        location == other.location &&
        minimumOrderSum == other.minimumOrderSum &&
        deliveryFee == other.deliveryFee &&
        waitTime == other.waitTime &&
        ratings == other.ratings &&
        coverImage == other.coverImage &&
        keywords == other.keywords &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(0,
                                                                name.hashCode),
                                                            description
                                                                .hashCode),
                                                        createdAt.hashCode),
                                                    modifiedAt.hashCode),
                                                categories.hashCode),
                                            openingTime.hashCode),
                                        closingTime.hashCode),
                                    location.hashCode),
                                minimumOrderSum.hashCode),
                            deliveryFee.hashCode),
                        waitTime.hashCode),
                    ratings.hashCode),
                coverImage.hashCode),
            keywords.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestaurantsRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt)
          ..add('categories', categories)
          ..add('openingTime', openingTime)
          ..add('closingTime', closingTime)
          ..add('location', location)
          ..add('minimumOrderSum', minimumOrderSum)
          ..add('deliveryFee', deliveryFee)
          ..add('waitTime', waitTime)
          ..add('ratings', ratings)
          ..add('coverImage', coverImage)
          ..add('keywords', keywords)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RestaurantsRecordBuilder
    implements Builder<RestaurantsRecord, RestaurantsRecordBuilder> {
  _$RestaurantsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _$this._modifiedAt;
  set modifiedAt(DateTime? modifiedAt) => _$this._modifiedAt = modifiedAt;

  ListBuilder<String>? _categories;
  ListBuilder<String> get categories =>
      _$this._categories ??= new ListBuilder<String>();
  set categories(ListBuilder<String>? categories) =>
      _$this._categories = categories;

  DateTime? _openingTime;
  DateTime? get openingTime => _$this._openingTime;
  set openingTime(DateTime? openingTime) => _$this._openingTime = openingTime;

  DateTime? _closingTime;
  DateTime? get closingTime => _$this._closingTime;
  set closingTime(DateTime? closingTime) => _$this._closingTime = closingTime;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  int? _minimumOrderSum;
  int? get minimumOrderSum => _$this._minimumOrderSum;
  set minimumOrderSum(int? minimumOrderSum) =>
      _$this._minimumOrderSum = minimumOrderSum;

  int? _deliveryFee;
  int? get deliveryFee => _$this._deliveryFee;
  set deliveryFee(int? deliveryFee) => _$this._deliveryFee = deliveryFee;

  WaitTimeStructBuilder? _waitTime;
  WaitTimeStructBuilder get waitTime =>
      _$this._waitTime ??= new WaitTimeStructBuilder();
  set waitTime(WaitTimeStructBuilder? waitTime) => _$this._waitTime = waitTime;

  ListBuilder<RatingStruct>? _ratings;
  ListBuilder<RatingStruct> get ratings =>
      _$this._ratings ??= new ListBuilder<RatingStruct>();
  set ratings(ListBuilder<RatingStruct>? ratings) => _$this._ratings = ratings;

  String? _coverImage;
  String? get coverImage => _$this._coverImage;
  set coverImage(String? coverImage) => _$this._coverImage = coverImage;

  ListBuilder<String>? _keywords;
  ListBuilder<String> get keywords =>
      _$this._keywords ??= new ListBuilder<String>();
  set keywords(ListBuilder<String>? keywords) => _$this._keywords = keywords;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RestaurantsRecordBuilder() {
    RestaurantsRecord._initializeBuilder(this);
  }

  RestaurantsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _createdAt = $v.createdAt;
      _modifiedAt = $v.modifiedAt;
      _categories = $v.categories?.toBuilder();
      _openingTime = $v.openingTime;
      _closingTime = $v.closingTime;
      _location = $v.location;
      _minimumOrderSum = $v.minimumOrderSum;
      _deliveryFee = $v.deliveryFee;
      _waitTime = $v.waitTime.toBuilder();
      _ratings = $v.ratings?.toBuilder();
      _coverImage = $v.coverImage;
      _keywords = $v.keywords?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestaurantsRecord;
  }

  @override
  void update(void Function(RestaurantsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestaurantsRecord build() => _build();

  _$RestaurantsRecord _build() {
    _$RestaurantsRecord _$result;
    try {
      _$result = _$v ??
          new _$RestaurantsRecord._(
              name: name,
              description: description,
              createdAt: createdAt,
              modifiedAt: modifiedAt,
              categories: _categories?.build(),
              openingTime: openingTime,
              closingTime: closingTime,
              location: location,
              minimumOrderSum: minimumOrderSum,
              deliveryFee: deliveryFee,
              waitTime: waitTime.build(),
              ratings: _ratings?.build(),
              coverImage: coverImage,
              keywords: _keywords?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        _categories?.build();

        _$failedField = 'waitTime';
        waitTime.build();
        _$failedField = 'ratings';
        _ratings?.build();

        _$failedField = 'keywords';
        _keywords?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RestaurantsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
