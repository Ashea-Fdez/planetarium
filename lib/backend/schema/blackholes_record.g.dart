// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blackholes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BlackholesRecord> _$blackholesRecordSerializer =
    new _$BlackholesRecordSerializer();

class _$BlackholesRecordSerializer
    implements StructuredSerializer<BlackholesRecord> {
  @override
  final Iterable<Type> types = const [BlackholesRecord, _$BlackholesRecord];
  @override
  final String wireName = 'BlackholesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BlackholesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.masa;
    if (value != null) {
      result
        ..add('masa')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tamano;
    if (value != null) {
      result
        ..add('tamano')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  BlackholesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BlackholesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'masa':
          result.masa = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tamano':
          result.tamano = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$BlackholesRecord extends BlackholesRecord {
  @override
  final String? nombre;
  @override
  final int? masa;
  @override
  final int? tamano;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BlackholesRecord(
          [void Function(BlackholesRecordBuilder)? updates]) =>
      (new BlackholesRecordBuilder()..update(updates))._build();

  _$BlackholesRecord._({this.nombre, this.masa, this.tamano, this.ffRef})
      : super._();

  @override
  BlackholesRecord rebuild(void Function(BlackholesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlackholesRecordBuilder toBuilder() =>
      new BlackholesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlackholesRecord &&
        nombre == other.nombre &&
        masa == other.masa &&
        tamano == other.tamano &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, nombre.hashCode), masa.hashCode), tamano.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BlackholesRecord')
          ..add('nombre', nombre)
          ..add('masa', masa)
          ..add('tamano', tamano)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BlackholesRecordBuilder
    implements Builder<BlackholesRecord, BlackholesRecordBuilder> {
  _$BlackholesRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  int? _masa;
  int? get masa => _$this._masa;
  set masa(int? masa) => _$this._masa = masa;

  int? _tamano;
  int? get tamano => _$this._tamano;
  set tamano(int? tamano) => _$this._tamano = tamano;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BlackholesRecordBuilder() {
    BlackholesRecord._initializeBuilder(this);
  }

  BlackholesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _masa = $v.masa;
      _tamano = $v.tamano;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlackholesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BlackholesRecord;
  }

  @override
  void update(void Function(BlackholesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BlackholesRecord build() => _build();

  _$BlackholesRecord _build() {
    final _$result = _$v ??
        new _$BlackholesRecord._(
            nombre: nombre, masa: masa, tamano: tamano, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
