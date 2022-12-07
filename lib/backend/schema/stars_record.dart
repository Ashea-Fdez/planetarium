import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'stars_record.g.dart';

abstract class StarsRecord implements Built<StarsRecord, StarsRecordBuilder> {
  static Serializer<StarsRecord> get serializer => _$starsRecordSerializer;

  String? get nombre;

  int? get edad;

  String? get tipo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StarsRecordBuilder builder) => builder
    ..nombre = ''
    ..edad = 0
    ..tipo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('stars');

  static Stream<StarsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StarsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StarsRecord._();
  factory StarsRecord([void Function(StarsRecordBuilder) updates]) =
      _$StarsRecord;

  static StarsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStarsRecordData({
  String? nombre,
  int? edad,
  String? tipo,
}) {
  final firestoreData = serializers.toFirestore(
    StarsRecord.serializer,
    StarsRecord(
      (s) => s
        ..nombre = nombre
        ..edad = edad
        ..tipo = tipo,
    ),
  );

  return firestoreData;
}
