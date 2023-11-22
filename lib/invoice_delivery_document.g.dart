// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_delivery_document.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InvoiceDeliveryDocumentAdapter
    extends TypeAdapter<InvoiceDeliveryDocument> {
  @override
  final int typeId = 124;

  @override
  InvoiceDeliveryDocument read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InvoiceDeliveryDocument(
      id: fields[0] as int,
      saleOrderId: fields[1] as int,
      visitId: fields[2] as String,
      totalCost: fields[3] as num,
      paymentMethod: fields[4] as String,
      paymentStatus: fields[5] as String,
      amountPaid: fields[6] as num,
      createdAt: fields[8] as DateTime,
      erpReference: fields[9] as String,
      showDeliveryItems: fields[7] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, InvoiceDeliveryDocument obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.saleOrderId)
      ..writeByte(2)
      ..write(obj.visitId)
      ..writeByte(3)
      ..write(obj.totalCost)
      ..writeByte(4)
      ..write(obj.paymentMethod)
      ..writeByte(5)
      ..write(obj.paymentStatus)
      ..writeByte(6)
      ..write(obj.amountPaid)
      ..writeByte(7)
      ..write(obj.showDeliveryItems)
      ..writeByte(8)
      ..write(obj.createdAt)
      ..writeByte(9)
      ..write(obj.erpReference);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InvoiceDeliveryDocumentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
