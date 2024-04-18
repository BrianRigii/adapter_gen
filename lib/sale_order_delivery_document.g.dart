// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_order_delivery_document.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SaleOrderDeliveryDocumentAdapter
    extends TypeAdapter<SaleOrderDeliveryDocument> {
  @override
  final int typeId = 69;

  @override
  SaleOrderDeliveryDocument read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SaleOrderDeliveryDocument(
      id: fields[0] as int,
      entryTime: fields[1] as DateTime,
      totalValue: fields[2] as double,
      showDeliveryItems: fields[3] as bool,
      erpReference: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SaleOrderDeliveryDocument obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.entryTime)
      ..writeByte(2)
      ..write(obj.totalValue)
      ..writeByte(3)
      ..write(obj.showDeliveryItems)
      ..writeByte(4)
      ..write(obj.erpReference);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SaleOrderDeliveryDocumentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
