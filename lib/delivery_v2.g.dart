// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_v2.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeliveryV2Adapter extends TypeAdapter<DeliveryV2> {
  @override
  final int typeId = 173;

  @override
  DeliveryV2 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeliveryV2(
      id: fields[0] as int,
      tripId: fields[1] as int,
      visitId: fields[2] as String,
      deliveryDocumentTypeId: fields[3] as int,
      deliveryDocumentType: fields[4] as String,
      shopId: fields[5] as int,
      items: (fields[6] as List)?.cast<DeliveryItem>(),
      deliveryDocumentRefrence: fields[7] as DeliveryDocumentRefrence,
      deliveryTime: fields[8] as DateTime,
      imagePaths: (fields[10] as List)?.cast<String>(),
      synced: fields[13] as bool,
      entryType: fields[14] as String,
      shopName: fields[15] as String,
      shopLatitude: fields[16] as double,
      shopLongitude: fields[17] as double,
      natureOfGoods: fields[21] as String,
      vehicleType: fields[19] as String,
      route: fields[20] as String,
      notes: fields[9] as String,
      paymentAmount: fields[26] as String,
      paymentMethod: fields[27] as String,
      paymentMethodId: fields[31] as int,
      paymentStatus: fields[32] as String,
      paymentId: fields[33] as int,
      paymentReference: fields[34] as String,
      bankId: fields[35] as int,
      maturityDate: fields[36] as String,
      nextPaymentDate: fields[37] as String,
      chequePhoto: fields[38] as String,
      receiverContact: fields[23] as String,
      customerContact: fields[22] as String,
      receiverName: fields[25] as String,
      activities: (fields[24] as List)?.cast<DeliveryActivity>(),
      deliveryLocation: fields[18] as DeliveryLocationV2,
      status: fields[28] as String,
      taxInvoiceNumber: fields[42] as String,
      taxInvoiceQrCode: fields[41] as String,
      taxVerificationCode: fields[40] as String,
      signature: fields[39] as String,
      deliveryLocationId: fields[43] as int,
      logisticsDeliveryAddresses: (fields[44] as List)?.cast<dynamic>(),
    )
      ..deliveryLatitude = fields[11] as double
      ..deliveryLongitude = fields[12] as double
      ..paymentType = fields[30] as String;
  }

  @override
  void write(BinaryWriter writer, DeliveryV2 obj) {
    writer
      ..writeByte(44)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.tripId)
      ..writeByte(2)
      ..write(obj.visitId)
      ..writeByte(3)
      ..write(obj.deliveryDocumentTypeId)
      ..writeByte(4)
      ..write(obj.deliveryDocumentType)
      ..writeByte(5)
      ..write(obj.shopId)
      ..writeByte(6)
      ..write(obj.items)
      ..writeByte(7)
      ..write(obj.deliveryDocumentRefrence)
      ..writeByte(8)
      ..write(obj.deliveryTime)
      ..writeByte(9)
      ..write(obj.notes)
      ..writeByte(10)
      ..write(obj.imagePaths)
      ..writeByte(11)
      ..write(obj.deliveryLatitude)
      ..writeByte(12)
      ..write(obj.deliveryLongitude)
      ..writeByte(13)
      ..write(obj.synced)
      ..writeByte(14)
      ..write(obj.entryType)
      ..writeByte(15)
      ..write(obj.shopName)
      ..writeByte(16)
      ..write(obj.shopLatitude)
      ..writeByte(17)
      ..write(obj.shopLongitude)
      ..writeByte(18)
      ..write(obj.deliveryLocation)
      ..writeByte(19)
      ..write(obj.vehicleType)
      ..writeByte(20)
      ..write(obj.route)
      ..writeByte(21)
      ..write(obj.natureOfGoods)
      ..writeByte(22)
      ..write(obj.customerContact)
      ..writeByte(23)
      ..write(obj.receiverContact)
      ..writeByte(24)
      ..write(obj.activities)
      ..writeByte(25)
      ..write(obj.receiverName)
      ..writeByte(26)
      ..write(obj.paymentAmount)
      ..writeByte(27)
      ..write(obj.paymentMethod)
      ..writeByte(28)
      ..write(obj.status)
      ..writeByte(30)
      ..write(obj.paymentType)
      ..writeByte(31)
      ..write(obj.paymentMethodId)
      ..writeByte(32)
      ..write(obj.paymentStatus)
      ..writeByte(33)
      ..write(obj.paymentId)
      ..writeByte(34)
      ..write(obj.paymentReference)
      ..writeByte(35)
      ..write(obj.bankId)
      ..writeByte(36)
      ..write(obj.maturityDate)
      ..writeByte(37)
      ..write(obj.nextPaymentDate)
      ..writeByte(38)
      ..write(obj.chequePhoto)
      ..writeByte(39)
      ..write(obj.signature)
      ..writeByte(40)
      ..write(obj.taxVerificationCode)
      ..writeByte(41)
      ..write(obj.taxInvoiceQrCode)
      ..writeByte(42)
      ..write(obj.taxInvoiceNumber)
      ..writeByte(43)
      ..write(obj.deliveryLocationId)
      ..writeByte(44)
      ..write(obj.logisticsDeliveryAddresses);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeliveryV2Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DeliveryItemAdapter extends TypeAdapter<DeliveryItem> {
  @override
  final int typeId = 126;

  @override
  DeliveryItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeliveryItem(
      id: fields[1] as int,
      quantity: fields[2] as double,
      productDesc: fields[3] as String,
      productId: fields[4] as int,
      packagingId: fields[7] as int,
      deliveredQuantity: fields[5] as double,
      deliveredQuatntityReason: fields[6] as String,
      deliveryId: fields[0] as int,
      deliveredPackagingId: fields[9] as int,
      deliveredPackagingKey: fields[10] as String,
      sellingPrice: fields[11] as double,
      packageKey: fields[8] as String,
      prices: (fields[12] as List)?.cast<DeliveryPrice>(),
      selectedPrice: fields[13] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DeliveryItem obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.deliveryId)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.quantity)
      ..writeByte(3)
      ..write(obj.productDesc)
      ..writeByte(4)
      ..write(obj.productId)
      ..writeByte(5)
      ..write(obj.deliveredQuantity)
      ..writeByte(6)
      ..write(obj.deliveredQuatntityReason)
      ..writeByte(7)
      ..write(obj.packagingId)
      ..writeByte(8)
      ..write(obj.packageKey)
      ..writeByte(9)
      ..write(obj.deliveredPackagingId)
      ..writeByte(10)
      ..write(obj.deliveredPackagingKey)
      ..writeByte(11)
      ..write(obj.sellingPrice)
      ..writeByte(12)
      ..write(obj.prices)
      ..writeByte(13)
      ..write(obj.selectedPrice);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeliveryItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
