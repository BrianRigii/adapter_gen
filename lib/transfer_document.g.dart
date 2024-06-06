// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_document.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TransferDocumentAdapter extends TypeAdapter<TransferDocument> {
  @override
  final int typeId = 196;

  @override
  TransferDocument read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TransferDocument(
      id: fields[0] as int,
      showDeliveryItems: fields[1] as bool,
      receivedAt: fields[2] as DateTime,
      appValidaiton: fields[3] as String,
      stockpointvalidation: fields[4] as String,
      appValidationTime: fields[5] as DateTime,
      stockPointValidationTime: fields[6] as DateTime,
      entryType: fields[7] as String,
      transferType: fields[8] as String,
      reference: fields[9] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TransferDocument obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.showDeliveryItems)
      ..writeByte(2)
      ..write(obj.receivedAt)
      ..writeByte(3)
      ..write(obj.appValidaiton)
      ..writeByte(4)
      ..write(obj.stockpointvalidation)
      ..writeByte(5)
      ..write(obj.appValidationTime)
      ..writeByte(6)
      ..write(obj.stockPointValidationTime)
      ..writeByte(7)
      ..write(obj.entryType)
      ..writeByte(8)
      ..write(obj.transferType)
      ..writeByte(9)
      ..write(obj.reference);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransferDocumentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
