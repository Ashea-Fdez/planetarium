import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'planets_record.g.dart';

abstract class PlanetsRecord
    implements Built<PlanetsRecord, PlanetsRecordBuilder> {
  static Serializer<PlanetsRecord> get serializer => _$planetsRecordSerializer;

  @BuiltValueField(wireName: 'Nombre')
  String? get nombre;

  int? get tamano;

  int? get tiemporot;

  int? get tiempotras;

  String? get materials;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PlanetsRecordBuilder builder) => builder
    ..nombre = ''
    ..tamano = 0
    ..tiemporot = 0
    ..tiempotras = 0
    ..materials = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('planets');

  static Stream<PlanetsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PlanetsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PlanetsRecord._();
  factory PlanetsRecord([void Function(PlanetsRecordBuilder) updates]) =
      _$PlanetsRecord;

  static PlanetsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPlanetsRecordData({
  String? nombre,
  int? tamano,
  int? tiemporot,
  int? tiempotras,
  String? materials,
}) {
  final firestoreData = serializers.toFirestore(
    PlanetsRecord.serializer,
    PlanetsRecord(
      (p) => p
        ..nombre = nombre
        ..tamano = tamano
        ..tiemporot = tiemporot
        ..tiempotras = tiempotras
        ..materials = materials,
    ),
  );

  return firestoreData;
}
