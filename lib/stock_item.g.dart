// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_item.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StockItemAdapter extends TypeAdapter<StockItem> {
  @override
  final int typeId = 181;

  @override
  StockItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StockItem(
      productId: fields[0] as int,
      productName: fields[2] as String,
      productDesc: fields[3] as String,
      unit: fields[4] as String,
      quantity: fields[7] as num,
      stockId: fields[1] as int,
      batchnumber: fields[6] as String,
      packagingId: fields[5] as int,
      price: fields[8] as double,
      crtQnty: fields[9] as int,
    );
  }

  @override
  void write(BinaryWriter writer, StockItem obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.productId)
      ..writeByte(1)
      ..write(obj.stockId)
      ..writeByte(2)
      ..write(obj.productName)
      ..writeByte(3)
      ..write(obj.productDesc)
      ..writeByte(4)
      ..write(obj.unit)
      ..writeByte(5)
      ..write(obj.packagingId)
      ..writeByte(6)
      ..write(obj.batchnumber)
      ..writeByte(7)
      ..write(obj.quantity)
      ..writeByte(8)
      ..write(obj.price)
      ..writeByte(9)
      ..write(obj.crtQnty);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StockItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
