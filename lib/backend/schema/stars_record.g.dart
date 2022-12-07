// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stars_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StarsRecord> _$starsRecordSerializer = new _$StarsRecordSerializer();

class _$StarsRecordSerializer implements StructuredSerializer<StarsRecord> {
  @override
  final Iterable<Type> types = const [StarsRecord, _$StarsRecord];
  @override
  final String wireName = 'StarsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, StarsRecord object,
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
    value = object.edad;
    if (value != null) {
      result
        ..add('edad')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tipo;
    if (value != null) {
      result
        ..add('tipo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  StarsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StarsRecordBuilder();

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
        case 'edad':
          result.edad = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tipo':
          result.tipo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$StarsRecord extends StarsRecord {
  @override
  final String? nombre;
  @override
  final int? edad;
  @override
  final String? tipo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$StarsRecord([void Function(StarsRecordBuilder)? updates]) =>
      (new StarsRecordBuilder()..update(updates))._build();

  _$StarsRecord._({this.nombre, this.edad, this.tipo, this.ffRef}) : super._();

  @override
  StarsRecord rebuild(void Function(StarsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StarsRecordBuilder toBuilder() => new StarsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StarsRecord &&
        nombre == other.nombre &&
        edad == other.edad &&
        tipo == other.tipo &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, nombre.hashCode), edad.hashCode), tipo.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StarsRecord')
          ..add('nombre', nombre)
          ..add('edad', edad)
          ..add('tipo', tipo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class StarsRecordBuilder implements Builder<StarsRecord, StarsRecordBuilder> {
  _$StarsRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  int? _edad;
  int? get edad => _$this._edad;
  set edad(int? edad) => _$this._edad = edad;

  String? _tipo;
  String? get tipo => _$this._tipo;
  set tipo(String? tipo) => _$this._tipo = tipo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  StarsRecordBuilder() {
    StarsRecord._initializeBuilder(this);
  }

  StarsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _edad = $v.edad;
      _tipo = $v.tipo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StarsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StarsRecord;
  }

  @override
  void update(void Function(StarsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StarsRecord build() => _build();

  _$StarsRecord _build() {
    final _$result = _$v ??
        new _$StarsRecord._(
            nombre: nombre, edad: edad, tipo: tipo, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
