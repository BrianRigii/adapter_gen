// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_price.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeliveryPriceAdapter extends TypeAdapter<DeliveryPrice> {
  @override
  final int typeId = 170;

  @override
  DeliveryPrice read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeliveryPrice(
      packagingId: fields[1] as int,
      quantity: fields[2] as int,
      price: fields[3] as double,
    );
  }

  @override
  void write(BinaryWriter writer, DeliveryPrice obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.packagingId)
      ..writeByte(2)
      ..write(obj.quantity)
      ..writeByte(3)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeliveryPriceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
