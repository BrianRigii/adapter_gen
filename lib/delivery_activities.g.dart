// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_activities.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeliveryActivityAdapter extends TypeAdapter<DeliveryActivity> {
  @override
  final int typeId = 154;

  @override
  DeliveryActivity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeliveryActivity(
      id: fields[0] as int,
      title: fields[1] as String,
      description: fields[2] as String,
      slug: fields[3] as String,
      priority: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, DeliveryActivity obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.slug)
      ..writeByte(4)
      ..write(obj.priority);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeliveryActivityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
