import 'package:adapter_gen/delivery_document.dart';
import 'package:hive/hive.dart';

part 'transfer_document.g.dart';

@HiveType(typeId: 196)
class TransferDocument extends DeliveryDocumentRefrence {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final bool showDeliveryItems;
  @HiveField(2)
  final DateTime receivedAt;
  @HiveField(3)
  final String appValidaiton;
  @HiveField(4)
  final String stockpointvalidation;
  @HiveField(5)
  final DateTime appValidationTime;
  @HiveField(6)
  final DateTime stockPointValidationTime;
  @HiveField(7)
  final String entryType;
  @HiveField(8)
  final String transferType;
  @HiveField(9)
  final String reference;

  TransferDocument({
    this.id,
    this.showDeliveryItems,
    this.receivedAt,
    this.appValidaiton,
    this.stockpointvalidation,
    this.appValidationTime,
    this.stockPointValidationTime,
    this.entryType,
    this.transferType,
    this.reference,
  });

  factory TransferDocument.fromMap(Map<String, dynamic> json,
      {showDeliveryItems}) {
    return TransferDocument(
      id: json['id'],
      showDeliveryItems: showDeliveryItems,
      receivedAt: json['received_at'] != null
          ? DateTime.parse(json['received_at'])
          : null,
      appValidaiton: json['app_validation'],
      stockpointvalidation: json['stockpoint_validation'],
      appValidationTime: json['app_validation_time'] != null
          ? DateTime.parse(json['app_validation_time'])
          : null,
      stockPointValidationTime: json['stock_point_validation_time'] != null
          ? DateTime.parse(json['stock_point_validation_time'])
          : null,
    );
  }
}
