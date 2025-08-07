// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'universal_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UniversalModelAdapter extends TypeAdapter<UniversalModel> {
  @override
  final int typeId = 0;

  @override
  UniversalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UniversalModel(
      dataType: fields[0] as String,
      data: (fields[1] as Map)?.cast<String, dynamic>(),
      createdAt: fields[2] as DateTime,
      updatedAt: fields[3] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, UniversalModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.dataType)
      ..writeByte(1)
      ..write(obj.data)
      ..writeByte(2)
      ..write(obj.createdAt)
      ..writeByte(3)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UniversalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
