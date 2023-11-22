import 'package:flutter/material.dart';

abstract class DeliveryDocumentRefrence {
  final int id;
  final bool showDeliveryItems; // has line items;
  final String erpReference;

  DeliveryDocumentRefrence({
    @required this.id,
    @required this.showDeliveryItems,
    @required this.erpReference,
  });
}

///Read
