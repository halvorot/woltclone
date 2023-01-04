import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'rating_struct.g.dart';

abstract class RatingStruct
    implements Built<RatingStruct, RatingStructBuilder> {
  static Serializer<RatingStruct> get serializer => _$ratingStructSerializer;

  double? get value;

  String? get description;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(RatingStructBuilder builder) => builder
    ..value = 0.0
    ..description = ''
    ..firestoreUtilData = FirestoreUtilData();

  RatingStruct._();
  factory RatingStruct([void Function(RatingStructBuilder) updates]) =
      _$RatingStruct;
}

RatingStruct createRatingStruct({
  double? value,
  String? description,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RatingStruct(
      (r) => r
        ..value = value
        ..description = description
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

RatingStruct? updateRatingStruct(
  RatingStruct? rating, {
  bool clearUnsetFields = true,
}) =>
    rating != null
        ? (rating.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addRatingStructData(
  Map<String, dynamic> firestoreData,
  RatingStruct? rating,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (rating == null) {
    return;
  }
  if (rating.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && rating.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ratingData = getRatingFirestoreData(rating, forFieldValue);
  final nestedData = ratingData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = rating.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getRatingFirestoreData(
  RatingStruct? rating, [
  bool forFieldValue = false,
]) {
  if (rating == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(RatingStruct.serializer, rating);

  // Add any Firestore field values
  rating.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRatingListFirestoreData(
  List<RatingStruct>? ratings,
) =>
    ratings?.map((r) => getRatingFirestoreData(r, true)).toList() ?? [];
