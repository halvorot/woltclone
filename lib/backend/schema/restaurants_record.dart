import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'restaurants_record.g.dart';

abstract class RestaurantsRecord
    implements Built<RestaurantsRecord, RestaurantsRecordBuilder> {
  static Serializer<RestaurantsRecord> get serializer =>
      _$restaurantsRecordSerializer;

  String? get name;

  String? get description;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'modified_at')
  DateTime? get modifiedAt;

  BuiltList<String>? get categories;

  @BuiltValueField(wireName: 'opening_time')
  DateTime? get openingTime;

  @BuiltValueField(wireName: 'closing_time')
  DateTime? get closingTime;

  LatLng? get location;

  @BuiltValueField(wireName: 'minimum_order_sum')
  int? get minimumOrderSum;

  @BuiltValueField(wireName: 'delivery_fee')
  int? get deliveryFee;

  @BuiltValueField(wireName: 'wait_time')
  WaitTimeStruct get waitTime;

  BuiltList<RatingStruct>? get ratings;

  @BuiltValueField(wireName: 'cover_image')
  String? get coverImage;

  BuiltList<String>? get keywords;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RestaurantsRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..categories = ListBuilder()
    ..minimumOrderSum = 0
    ..deliveryFee = 0
    ..waitTime = WaitTimeStructBuilder()
    ..ratings = ListBuilder()
    ..coverImage = ''
    ..keywords = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('restaurants');

  static Stream<RestaurantsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RestaurantsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RestaurantsRecord._();
  factory RestaurantsRecord([void Function(RestaurantsRecordBuilder) updates]) =
      _$RestaurantsRecord;

  static RestaurantsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRestaurantsRecordData({
  String? name,
  String? description,
  DateTime? createdAt,
  DateTime? modifiedAt,
  DateTime? openingTime,
  DateTime? closingTime,
  LatLng? location,
  int? minimumOrderSum,
  int? deliveryFee,
  WaitTimeStruct? waitTime,
  String? coverImage,
}) {
  final firestoreData = serializers.toFirestore(
    RestaurantsRecord.serializer,
    RestaurantsRecord(
      (r) => r
        ..name = name
        ..description = description
        ..createdAt = createdAt
        ..modifiedAt = modifiedAt
        ..categories = null
        ..openingTime = openingTime
        ..closingTime = closingTime
        ..location = location
        ..minimumOrderSum = minimumOrderSum
        ..deliveryFee = deliveryFee
        ..waitTime = WaitTimeStructBuilder()
        ..ratings = null
        ..coverImage = coverImage
        ..keywords = null,
    ),
  );

  // Handle nested data for "wait_time" field.
  addWaitTimeStructData(firestoreData, waitTime, 'wait_time');

  return firestoreData;
}
