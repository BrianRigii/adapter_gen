// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_log.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeliveryLogAdapter extends TypeAdapter<DeliveryLog> {
  @override
  final int typeId = 14;

  @override
  DeliveryLog read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeliveryLog(
      tripId: fields[0] as int,
      deliveryId: fields[1] as int,
      latitude: fields[2] as double,
      longitude: fields[3] as double,
      activityId: fields[4] as int,
      entryTime: fields[5] as DateTime,
      synced: fields[6] as bool,
      id: fields[7] as int,
    );
  }

  @override
  void write(BinaryWriter writer, DeliveryLog obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.tripId)
      ..writeByte(1)
      ..write(obj.deliveryId)
      ..writeByte(2)
      ..write(obj.latitude)
      ..writeByte(3)
      ..write(obj.longitude)
      ..writeByte(4)
      ..write(obj.activityId)
      ..writeByte(5)
      ..write(obj.entryTime)
      ..writeByte(6)
      ..write(obj.synced)
      ..writeByte(7)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeliveryLogAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
