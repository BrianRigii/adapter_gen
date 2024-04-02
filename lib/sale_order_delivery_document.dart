import 'dart:developer';

import 'package:hive/hive.dart';

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
  SaleOrderDeliveryDocument({
    this.id,
    this.entryTime,
    this.totalValue,
    this.showDeliveryItems,
  });

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
          showDeliveryItems: showDeliveryItems);
    } catch (e, trace) {
      log("Error mapping sale order delivery document",
          error: e, stackTrace: trace);
      return null;
    }
  }
}
