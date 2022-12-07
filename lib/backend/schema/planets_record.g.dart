// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planets_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlanetsRecord> _$planetsRecordSerializer =
    new _$PlanetsRecordSerializer();

class _$PlanetsRecordSerializer implements StructuredSerializer<PlanetsRecord> {
  @override
  final Iterable<Type> types = const [PlanetsRecord, _$PlanetsRecord];
  @override
  final String wireName = 'PlanetsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PlanetsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('Nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tamano;
    if (value != null) {
      result
        ..add('tamano')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tiemporot;
    if (value != null) {
      result
        ..add('tiemporot')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tiempotras;
    if (value != null) {
      result
        ..add('tiempotras')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.materials;
    if (value != null) {
      result
        ..add('materials')
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
  PlanetsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlanetsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tamano':
          result.tamano = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tiemporot':
          result.tiemporot = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tiempotras':
          result.tiempotras = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'materials':
          result.materials = serializers.deserialize(value,
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

class _$PlanetsRecord extends PlanetsRecord {
  @override
  final String? nombre;
  @override
  final int? tamano;
  @override
  final int? tiemporot;
  @override
  final int? tiempotras;
  @override
  final String? materials;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PlanetsRecord([void Function(PlanetsRecordBuilder)? updates]) =>
      (new PlanetsRecordBuilder()..update(updates))._build();

  _$PlanetsRecord._(
      {this.nombre,
      this.tamano,
      this.tiemporot,
      this.tiempotras,
      this.materials,
      this.ffRef})
      : super._();

  @override
  PlanetsRecord rebuild(void Function(PlanetsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlanetsRecordBuilder toBuilder() => new PlanetsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlanetsRecord &&
        nombre == other.nombre &&
        tamano == other.tamano &&
        tiemporot == other.tiemporot &&
        tiempotras == other.tiempotras &&
        materials == other.materials &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, nombre.hashCode), tamano.hashCode),
                    tiemporot.hashCode),
                tiempotras.hashCode),
            materials.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlanetsRecord')
          ..add('nombre', nombre)
          ..add('tamano', tamano)
          ..add('tiemporot', tiemporot)
          ..add('tiempotras', tiempotras)
          ..add('materials', materials)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PlanetsRecordBuilder
    implements Builder<PlanetsRecord, PlanetsRecordBuilder> {
  _$PlanetsRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  int? _tamano;
  int? get tamano => _$this._tamano;
  set tamano(int? tamano) => _$this._tamano = tamano;

  int? _tiemporot;
  int? get tiemporot => _$this._tiemporot;
  set tiemporot(int? tiemporot) => _$this._tiemporot = tiemporot;

  int? _tiempotras;
  int? get tiempotras => _$this._tiempotras;
  set tiempotras(int? tiempotras) => _$this._tiempotras = tiempotras;

  String? _materials;
  String? get materials => _$this._materials;
  set materials(String? materials) => _$this._materials = materials;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PlanetsRecordBuilder() {
    PlanetsRecord._initializeBuilder(this);
  }

  PlanetsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _tamano = $v.tamano;
      _tiemporot = $v.tiemporot;
      _tiempotras = $v.tiempotras;
      _materials = $v.materials;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlanetsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlanetsRecord;
  }

  @override
  void update(void Function(PlanetsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlanetsRecord build() => _build();

  _$PlanetsRecord _build() {
    final _$result = _$v ??
        new _$PlanetsRecord._(
            nombre: nombre,
            tamano: tamano,
            tiemporot: tiemporot,
            tiempotras: tiempotras,
            materials: materials,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
