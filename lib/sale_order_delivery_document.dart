import 'dart:developer';

import 'package:hive/hive.dart';

import 'delivery_document.dart';

part 'sale_order_delivery_document.g.dart';

@HiveType(typeId: 69) //lol
class SaleOrderDeliveryDocument extends DeliveryDocumentRefrence {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final DateTime entryTime;
  @HiveField(2)
  final double totalValue;
  @HiveField(3)
  final bool showDeliveryItems;
  @HiveField(4)
  final String erpReference;

  SaleOrderDeliveryDocument({
    this.id,
    this.entryTime,
    this.totalValue,
    this.showDeliveryItems,
    this.erpReference,
  }) : super(
            id: id,
            showDeliveryItems: showDeliveryItems,
            erpReference: erpReference);

  factory SaleOrderDeliveryDocument.fromMap(Map<String, dynamic> json,
      {bool showDeliveryItems}) {
    try {
      return SaleOrderDeliveryDocument(
          id: json['id'],
          entryTime: json["entry_time"] != null
              ? DateTime.tryParse(json["entry_time"])
              : null,
          totalValue: json["total_value"] != null
              ? double.parse(json["total_value"].toString())
              : 0,
          showDeliveryItems: showDeliveryItems,
          erpReference: json["erp_reference"]);
    } catch (e, trace) {
      log("Error mapping sale order delivery document",
          error: e, stackTrace: trace);
      return null;
    }
  }
}
