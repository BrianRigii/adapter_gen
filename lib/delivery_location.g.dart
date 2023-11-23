// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_location.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeliveryLocationV2Adapter extends TypeAdapter<DeliveryLocationV2> {
  @override
  final int typeId = 151;

  @override
  DeliveryLocationV2 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeliveryLocationV2(
      shopLatitude: fields[0] as double,
      shopLongitude: fields[1] as double,
      pickUpLocation: fields[2] as String,
      pickUpLatitude: fields[3] as double,
      pickUpLongitude: fields[4] as double,
      destination: fields[5] as String,
      destinationLatitude: fields[6] as double,
      destinationLongitude: fields[7] as double,
      alternativeLocation: fields[8] as String,
      alternativeLatitude: fields[9] as double,
      alternativeLongitude: fields[10] as double,
      geofencePickUp: fields[11] as bool,
      geofenceDestination: fields[12] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, DeliveryLocationV2 obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.shopLatitude)
      ..writeByte(1)
      ..write(obj.shopLongitude)
      ..writeByte(2)
      ..write(obj.pickUpLocation)
      ..writeByte(3)
      ..write(obj.pickUpLatitude)
      ..writeByte(4)
      ..write(obj.pickUpLongitude)
      ..writeByte(5)
      ..write(obj.destination)
      ..writeByte(6)
      ..write(obj.destinationLatitude)
      ..writeByte(7)
      ..write(obj.destinationLongitude)
      ..writeByte(8)
      ..write(obj.alternativeLocation)
      ..writeByte(9)
      ..write(obj.alternativeLatitude)
      ..writeByte(10)
      ..write(obj.alternativeLongitude)
      ..writeByte(11)
      ..write(obj.geofencePickUp)
      ..writeByte(12)
      ..write(obj.geofenceDestination);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeliveryLocationV2Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
