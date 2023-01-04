import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'wait_time_struct.g.dart';

abstract class WaitTimeStruct
    implements Built<WaitTimeStruct, WaitTimeStructBuilder> {
  static Serializer<WaitTimeStruct> get serializer =>
      _$waitTimeStructSerializer;

  @BuiltValueField(wireName: 'max_wait_time')
  int? get maxWaitTime;

  @BuiltValueField(wireName: 'min_wait_time')
  int? get minWaitTime;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(WaitTimeStructBuilder builder) => builder
    ..maxWaitTime = 0
    ..minWaitTime = 0
    ..firestoreUtilData = FirestoreUtilData();

  WaitTimeStruct._();
  factory WaitTimeStruct([void Function(WaitTimeStructBuilder) updates]) =
      _$WaitTimeStruct;
}

WaitTimeStruct createWaitTimeStruct({
  int? maxWaitTime,
  int? minWaitTime,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WaitTimeStruct(
      (w) => w
        ..maxWaitTime = maxWaitTime
        ..minWaitTime = minWaitTime
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

WaitTimeStruct? updateWaitTimeStruct(
  WaitTimeStruct? waitTime, {
  bool clearUnsetFields = true,
}) =>
    waitTime != null
        ? (waitTime.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addWaitTimeStructData(
  Map<String, dynamic> firestoreData,
  WaitTimeStruct? waitTime,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (waitTime == null) {
    return;
  }
  if (waitTime.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && waitTime.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final waitTimeData = getWaitTimeFirestoreData(waitTime, forFieldValue);
  final nestedData = waitTimeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = waitTime.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getWaitTimeFirestoreData(
  WaitTimeStruct? waitTime, [
  bool forFieldValue = false,
]) {
  if (waitTime == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(WaitTimeStruct.serializer, waitTime);

  // Add any Firestore field values
  waitTime.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWaitTimeListFirestoreData(
  List<WaitTimeStruct>? waitTimes,
) =>
    waitTimes?.map((w) => getWaitTimeFirestoreData(w, true)).toList() ?? [];
