import 'package:hive/hive.dart';

part 'logistics_delivery_address.g.dart';

@HiveType(typeId: 203)
class LogisticsDeliveryAddress {
  @HiveField(0)
  int id;
  @HiveField(1)
  String latitude;
  @HiveField(2)
  String longitude;
  @HiveField(3)
  String _type;
  @HiveField(4)
  String address;

  LogisticsDeliveryAddress({
    this.id,
    this.latitude,
    this.longitude,
    this.address,
    String type,
  }) : _type = type;

  factory LogisticsDeliveryAddress.fromMap(Map<String, dynamic> json) {
    return LogisticsDeliveryAddress(
      id: json['id'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      address: json['address'],
      type: json['type'],
    );
  }

  DeliveryLocationType get deliveryLocationType {
    if (_type == 'pick_up') {
      return DeliveryLocationType.pickUp;
    } else if (_type == 'delivery') {
      return DeliveryLocationType.delivery;
    } else {
      throw Exception('Invalid delivery location type');
    }
  }
}

enum DeliveryLocationType {
  pickUp,
  delivery,
}
