// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_note_document.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeliveryNoteDocumentAdapter extends TypeAdapter<DeliveryNoteDocument> {
  @override
  final int typeId = 125;

  @override
  DeliveryNoteDocument read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeliveryNoteDocument(
      id: fields[0] as int,
      warehouseId: fields[1] as int,
      saleOrderId: fields[2] as int,
      notes: fields[3] as String,
      erpReference: fields[4] as String,
      showDeliveryItems: fields[6] as bool,
      createdAt: fields[7] as DateTime,
      totalValue: fields[5] as num,
    );
  }

  @override
  void write(BinaryWriter writer, DeliveryNoteDocument obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.warehouseId)
      ..writeByte(2)
      ..write(obj.saleOrderId)
      ..writeByte(3)
      ..write(obj.notes)
      ..writeByte(4)
      ..write(obj.erpReference)
      ..writeByte(5)
      ..write(obj.totalValue)
      ..writeByte(6)
      ..write(obj.showDeliveryItems)
      ..writeByte(7)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeliveryNoteDocumentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
