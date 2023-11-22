// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_session.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeliverySessionAdapter extends TypeAdapter<DeliverySession> {
  @override
  final int typeId = 151;

  @override
  DeliverySession read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeliverySession(
      deliveryId: fields[0] as int,
      latitude: fields[1] as double,
      longitude: fields[2] as double,
      actvityId: fields[5] as int,
      startTime: fields[3] as DateTime,
      photo: fields[4] as String,
      endTime: fields[8] as DateTime,
      serverId: fields[6] as int,
      entryTime: fields[9] as DateTime,
      shouldSync: fields[7] as bool,
    )
      ..endLatitude = fields[10] as double
      ..endLongitude = fields[11] as double;
  }

  @override
  void write(BinaryWriter writer, DeliverySession obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.deliveryId)
      ..writeByte(1)
      ..write(obj.latitude)
      ..writeByte(2)
      ..write(obj.longitude)
      ..writeByte(3)
      ..write(obj.startTime)
      ..writeByte(4)
      ..write(obj.photo)
      ..writeByte(5)
      ..write(obj.actvityId)
      ..writeByte(6)
      ..write(obj.serverId)
      ..writeByte(7)
      ..write(obj.shouldSync)
      ..writeByte(8)
      ..write(obj.endTime)
      ..writeByte(9)
      ..write(obj.entryTime)
      ..writeByte(10)
      ..write(obj.endLatitude)
      ..writeByte(11)
      ..write(obj.endLongitude);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeliverySessionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
