// To parse this JSON data, do
//
//     final deliveryPrice = deliveryPriceFromMap(jsonString);

import 'dart:convert';

import 'package:hive/hive.dart';

part 'delivery_price.g.dart';

DeliveryPrice deliveryPriceFromMap(String str) =>
    DeliveryPrice.fromMap(json.decode(str));

String deliveryPriceToMap(DeliveryPrice data) => json.encode(data.toMap());

@HiveType(typeId: 170)
class DeliveryPrice {
  @HiveField(1)
  final int packagingId;
  @HiveField(2)
  final int quantity;
  @HiveField(3)
  final double price;

  DeliveryPrice({
    this.packagingId,
    this.quantity,
    this.price,
  });

  factory DeliveryPrice.fromMap(Map<String, dynamic> json) => DeliveryPrice(
        packagingId: json["packaging_id"],
        quantity: json["quantity"],
        price: json["price"] == null
            ? 0.0
            : double.parse(json["price"].toString()),
      );

  Map<String, dynamic> toMap() => {
        "packaging_id": packagingId,
        "quantity": quantity,
        "price": price,
      };
}
