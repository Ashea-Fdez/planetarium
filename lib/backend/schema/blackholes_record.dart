import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'blackholes_record.g.dart';

abstract class BlackholesRecord
    implements Built<BlackholesRecord, BlackholesRecordBuilder> {
  static Serializer<BlackholesRecord> get serializer =>
      _$blackholesRecordSerializer;

  String? get nombre;

  int? get masa;

  int? get tamano;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BlackholesRecordBuilder builder) => builder
    ..nombre = ''
    ..masa = 0
    ..tamano = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('blackholes');

  static Stream<BlackholesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BlackholesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BlackholesRecord._();
  factory BlackholesRecord([void Function(BlackholesRecordBuilder) updates]) =
      _$BlackholesRecord;

  static BlackholesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBlackholesRecordData({
  String? nombre,
  int? masa,
  int? tamano,
}) {
  final firestoreData = serializers.toFirestore(
    BlackholesRecord.serializer,
    BlackholesRecord(
      (b) => b
        ..nombre = nombre
        ..masa = masa
        ..tamano = tamano,
    ),
  );

  return firestoreData;
}
