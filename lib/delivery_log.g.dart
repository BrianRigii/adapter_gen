// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_log.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeliveryLogAdapter extends TypeAdapter<DeliveryLog> {
  @override
  final int typeId = 158;

  @override
  DeliveryLog read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeliveryLog(
      deliveryId: fields[0] as int,
      activityId: fields[1] as int,
      latitude: fields[2] as double,
      longitude: fields[3] as double,
      imagePath: (fields[4] as List)?.cast<String>(),
      comments: fields[5] as String,
      id: fields[8] as int,
      visitId: fields[9] as String,
      tripId: fields[10] as int,
      synced: fields[7] as bool,
      priority: fields[11] as int,
      entryTime: fields[6] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, DeliveryLog obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.deliveryId)
      ..writeByte(1)
      ..write(obj.activityId)
      ..writeByte(2)
      ..write(obj.latitude)
      ..writeByte(3)
      ..write(obj.longitude)
      ..writeByte(4)
      ..write(obj.imagePath)
      ..writeByte(5)
      ..write(obj.comments)
      ..writeByte(6)
      ..write(obj.entryTime)
      ..writeByte(7)
      ..write(obj.synced)
      ..writeByte(8)
      ..write(obj.id)
      ..writeByte(9)
      ..write(obj.visitId)
      ..writeByte(10)
      ..write(obj.tripId)
      ..writeByte(11)
      ..write(obj.priority);
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
