import 'package:adapter_gen/delivery_document.dart';
import 'package:hive/hive.dart';

part 'delivery_note_document.g.dart';

@HiveType(typeId: 125)
class DeliveryNoteDocument extends DeliveryDocumentRefrence {
  @override
  @HiveField(0)
  final int id;
  @HiveField(1)
  final int warehouseId;
  @HiveField(2)
  final int saleOrderId;
  @HiveField(3)
  final String notes;
  @HiveField(4)
  final String erpReference;
  @HiveField(5)
  final num totalValue;
  @override
  @HiveField(6)
  final bool showDeliveryItems;
  @HiveField(7)
  final DateTime createdAt;

  DeliveryNoteDocument(
      {this.id,
      this.warehouseId,
      this.saleOrderId,
      this.notes,
      this.erpReference,
      this.showDeliveryItems,
      this.createdAt,
      this.totalValue})
      : super(
            id: id,
            showDeliveryItems: showDeliveryItems,
            erpReference: erpReference);

  factory DeliveryNoteDocument.fromMap(Map<String, dynamic> json,
      {bool showDeliveryItems}) {
    try {
      return DeliveryNoteDocument(
          id: json["id"],
          warehouseId: json["warehouse_id"],
          saleOrderId: json["sale_order_id"],
          notes: json["notes"],
          erpReference: json["erp_reference"],
          showDeliveryItems: showDeliveryItems,
          totalValue: double.parse(json["total_value"]));
    } catch (error, stack) {
      throw FormatException(
          "Error parsing delivery note document $error $stack ", json);
    }
  }
}
