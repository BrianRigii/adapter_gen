import 'dart:developer';

import 'package:adapter_gen/delivery_activities.dart';
import 'package:adapter_gen/delivery_document.dart';
import 'package:adapter_gen/delivery_location.dart';
import 'package:adapter_gen/delivery_task.dart';
import 'package:adapter_gen/invoice_delivery_document.dart';
import 'package:hive/hive.dart';

import 'delivery_log.dart';
import 'delivery_note_document.dart';

part 'delivery_v2.g.dart';

@HiveType(typeId: 123)
class DeliveryV2 {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final int tripId;
  @HiveField(2)
  String visitId;
  @HiveField(3)
  final int deliveryDocumentTypeId;
  @HiveField(4)
  final String deliveryDocumentType;
  @HiveField(5)
  final int shopId;
  @HiveField(6)
  List<DeliveryItem> items;
  @HiveField(7)
  final DeliveryDocumentRefrence deliveryDocumentRefrence;
  @HiveField(8)
  DateTime deliveryTime;
  @HiveField(9)
  String notes;
  @HiveField(10)
  List<String> imagePaths;
  @HiveField(11)
  double deliveryLatitude;
  @HiveField(12)
  double deliveryLongitude;
  @HiveField(13)
  bool synced;
  @HiveField(14)
  String entryType;
  @HiveField(15)
  String shopName;
  @HiveField(16)
  double shopLatitude;
  @HiveField(17)
  double shopLongitude;
  @HiveField(18)
  DeliveryLocationV2 deliveryLocation;
  @HiveField(19)
  String vehicleType;
  @HiveField(20)
  String route;
  @HiveField(21)
  String natureOfGoods;
  @HiveField(22)
  String customerContact;
  @HiveField(23)
  String receiverContact;
  @HiveField(24)
  List<DeliveryActivity> activities;
  @HiveField(25)
  String receiverName;
  DeliveryV2(
      {this.id,
      this.tripId,
      this.visitId,
      this.deliveryDocumentTypeId,
      this.deliveryDocumentType,
      this.shopId,
      this.items,
      this.deliveryDocumentRefrence,
      this.deliveryTime,
      this.imagePaths,
      this.synced,
      this.entryType,
      this.shopName,
      this.shopLatitude,
      this.shopLongitude,
      this.deliveryLocation,
      this.vehicleType,
      this.route,
      this.natureOfGoods,
      this.customerContact,
      this.receiverContact,
      this.activities,
      this.receiverName,
      this.notes});

  factory DeliveryV2.fromMap(
    Map<String, dynamic> json,
  ) {
    try {
      Map<String, dynamic> shop = json['shop'] ?? {};
      // Customer customer = Customer.fromMap(shop);
      // db.customerBean.upsert(customer
      //   ..fromServer = true
      //   ..synced = true);
      String deliveryDocumentType =
          json['document_type'] != null ? json['document_type']['title'] : null;
      return DeliveryV2(
          id: json['delivery_id'],
          tripId: json['trip_id'],
          deliveryDocumentTypeId: json['document_type_id'],
          deliveryDocumentType: deliveryDocumentType,
          shopId: json['shop_id'],
          route: json['route'],
          vehicleType: json['vehicle_type'],
          natureOfGoods: json['nature_of_goods'],
          deliveryDocumentRefrence: () {
            bool showDeliveryItems =
                json['document_type']['has_lines'] == 1 ? true : false;
            switch (deliveryDocumentType.toLowerCase()) {
              case 'delivery notes':
                return DeliveryNoteDocument.fromMap(json['document_reference'],
                    showDeliveryItems: showDeliveryItems);
                break;
              case 'invoices':
                return InvoiceDeliveryDocument.fromMap(
                    json['document_reference'],
                    showDeliveryItems: showDeliveryItems);
                break;
              case 'delivery order':
                return DeliveryTask.fromMap(json['document_reference'],
                    showDeliveryItems: showDeliveryItems);
                break;
              default:
                log("Unknown delivery document type $deliveryDocumentType");
                return null;
            }
          }(),
          items: json['delivery_items'] != null
              ? List.from(json['delivery_items'])
                  .map((e) => DeliveryItem.fromJson(e))
                  .toList()
              : [],
          deliveryTime: json['delivery_time'] != null
              ? DateTime.parse(json['delivery_time'])
              : null,
          notes: json['notes'],
          shopName: shop['shop_name'],
          shopLatitude: shop['slatitude'] != null
              ? double.parse(shop['slatitude'])
              : null,
          shopLongitude: shop['slongitude'] != null
              ? double.parse(shop['slongitude'])
              : null,
          deliveryLocation:
              DeliveryLocationV2.fromMap(json['delivery_location']),
          activities: List.from(json['delivery_activities'] ?? [])
              .map((activity) => DeliveryActivity.fromJson(activity))
              .toList(),
          receiverContact: json['recipient_phone_number'],
          customerContact: "",
          receiverName: json['recipient_name']);
    } catch (error) {
      throw FormatException("Error parsing delivery $error ", json);
    }
  }

  bool get delivered => deliveryTime != null;

  // List<DeliveryLog> get deliveryLogs => deliveryLogService.deliveryLogs
  //     .where((element) => element.deliveryId == id)
  //     .toList();
}

enum DeliveryDocumentType { DELIVERY_NOTE, INVOICE, DELIVERY_TASK }

@HiveType(typeId: 126)
class DeliveryItem {
  @HiveField(0)
  final int deliveryId;
  @HiveField(1)
  final int id;
  @HiveField(2)
  final double quantity;
  @HiveField(3)
  final String productDesc;
  @HiveField(4)
  final int productId;
  @HiveField(5)
  double deliveredQuantity;
  @HiveField(6)
  String deliveredQuatntityReason;
  @HiveField(7)
  int packagingId;
  @HiveField(8)
  String packageKey;
  @HiveField(9)
  int deliveredPackagingId;
  @HiveField(10)
  String deliveredPackagingKey;
  @HiveField(11)
  double sellingPrice;

  DeliveryItem(
      {this.id,
      this.quantity,
      this.productDesc,
      this.productId,
      this.packagingId,
      this.deliveredQuantity,
      this.deliveredQuatntityReason,
      this.deliveryId,
      this.deliveredPackagingId,
      this.deliveredPackagingKey,
      this.sellingPrice,
      this.packageKey});

  factory DeliveryItem.fromJson(Map<String, dynamic> json) {
    Map<String, dynamic> product = json['product'];
    Map<String, dynamic> packaging = json['packaging'];
    Map<String, dynamic> deliveredPackaging = json['delivered_packaging'];
    try {
      return DeliveryItem(
        id: json['delivery_item_id'],
        quantity: json['quantity'] != null
            ? double.parse(json['quantity'].toString())
            : 0,
        productDesc: product['product_desc'],
        packagingId: packaging['id'],
        packageKey: packaging['package_key'],
        productId: product['product_id'],
        deliveryId: json['delivery_id'],
        deliveredQuantity: json['delivered_quantity'] != null
            ? double.parse(json['delivered_quantity'].toString())
            : null,
        deliveredQuatntityReason: json['delivered_quantity_reason'],
        sellingPrice: json['selling_price'] != null
            ? double.parse(json['selling_price'].toString())
            : 0,
        deliveredPackagingId: json['delivered_packaging_id'],
        deliveredPackagingKey: deliveredPackaging != null
            ? deliveredPackaging['package_key']
            : null,
      );
    } catch (error) {
      throw FormatException('Error parsing delivery item $error', json);
    }
  }

  bool get deliveringAsOrdered =>
      deliveredQuantity == quantity && deliveredPackagingId == packagingId;
}
