// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logistics_delivery_address.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LogisticsDeliveryAddressAdapter
    extends TypeAdapter<LogisticsDeliveryAddress> {
  @override
  final int typeId = 203;

  @override
  LogisticsDeliveryAddress read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LogisticsDeliveryAddress(
      id: fields[0] as int,
      latitude: fields[1] as String,
      longitude: fields[2] as String,
      address: fields[4] as String,
    ).._type = fields[3] as String;
  }

  @override
  void write(BinaryWriter writer, LogisticsDeliveryAddress obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.latitude)
      ..writeByte(2)
      ..write(obj.longitude)
      ..writeByte(3)
      ..write(obj._type)
      ..writeByte(4)
      ..write(obj.address);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LogisticsDeliveryAddressAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
