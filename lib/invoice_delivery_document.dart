import 'package:hive/hive.dart';

import 'delivery_document.dart';

part 'invoice_delivery_document.g.dart';

@HiveType(typeId: 124)
class InvoiceDeliveryDocument extends DeliveryDocumentRefrence {
  @override
  @HiveField(0)
  final int id;
  @HiveField(1)
  final int saleOrderId;
  @HiveField(2)
  final String visitId;
  @HiveField(3)
  final num totalCost;
  @HiveField(4)
  final String paymentMethod;
  @HiveField(5)
  final String paymentStatus;
  @HiveField(6)
  final num amountPaid;
  @override
  @HiveField(7)
  final bool showDeliveryItems;
  @HiveField(8)
  final DateTime createdAt;
  @override
  @HiveField(9)
  final String erpReference;
  InvoiceDeliveryDocument(
      {this.id,
      this.saleOrderId,
      this.visitId,
      this.totalCost,
      this.paymentMethod,
      this.paymentStatus,
      this.amountPaid,
      this.createdAt,
      this.erpReference,
      this.showDeliveryItems})
      : super(
            id: id,
            showDeliveryItems: showDeliveryItems,
            erpReference: erpReference);

  factory InvoiceDeliveryDocument.fromMap(Map<String, dynamic> json,
      {bool showDeliveryItems}) {
    try {
      return InvoiceDeliveryDocument(
          id: json['order_id'],
          saleOrderId: json["sale_order_id"],
          visitId: json["visitid"],
          paymentMethod: json["payment_method"],
          paymentStatus: json["payment_status"],
          erpReference: json["erp_reference"],
          totalCost: json["total_cost"] != null
              ? double.parse(json["total_cost"].toString())
              : 0,
          amountPaid: json["amount_paid"] != null
              ? double.parse(json["amount_paid"].toString())
              : 0,
          showDeliveryItems: showDeliveryItems);
    } catch (error) {
      throw FormatException(
          "Error parsing invoice delivery document $error ", json);
    }
  }
}
