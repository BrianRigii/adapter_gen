// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TripAdapter extends TypeAdapter<Trip> {
  @override
  final int typeId = 122;

  @override
  Trip read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Trip(
      id: fields[0] as int,
      scheduledTime: fields[1] as DateTime,
      releasedTime: fields[2] as DateTime,
      dispatchLatitude: fields[3] as String,
      dispatchLongitude: fields[4] as String,
      returnTime: fields[5] as DateTime,
      returnLatitude: fields[6] as String,
      returnLongitude: fields[7] as String,
      startOdometer: fields[8] as int,
      endOdometer: fields[9] as int,
      dispatchTime: fields[11] as DateTime,
      deliveries: (fields[10] as List)?.cast<DeliveryV2>(),
      status: fields[17] as TripStatus,
      scheduleTime: fields[18] as DateTime,
      tripType: fields[16] as String,
    )
      ..tripStartSynced = fields[12] as bool
      ..tripEndSynced = fields[13] as bool
      ..fromServer = fields[14] as bool
      ..undeliveredDeliveries = fields[15] as String;
  }

  @override
  void write(BinaryWriter writer, Trip obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.scheduledTime)
      ..writeByte(2)
      ..write(obj.releasedTime)
      ..writeByte(3)
      ..write(obj.dispatchLatitude)
      ..writeByte(4)
      ..write(obj.dispatchLongitude)
      ..writeByte(5)
      ..write(obj.returnTime)
      ..writeByte(6)
      ..write(obj.returnLatitude)
      ..writeByte(7)
      ..write(obj.returnLongitude)
      ..writeByte(8)
      ..write(obj.startOdometer)
      ..writeByte(9)
      ..write(obj.endOdometer)
      ..writeByte(10)
      ..write(obj.deliveries)
      ..writeByte(11)
      ..write(obj.dispatchTime)
      ..writeByte(12)
      ..write(obj.tripStartSynced)
      ..writeByte(13)
      ..write(obj.tripEndSynced)
      ..writeByte(14)
      ..write(obj.fromServer)
      ..writeByte(15)
      ..write(obj.undeliveredDeliveries)
      ..writeByte(16)
      ..write(obj.tripType)
      ..writeByte(17)
      ..write(obj.status)
      ..writeByte(18)
      ..write(obj.scheduleTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TripAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
