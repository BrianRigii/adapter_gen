import 'package:hive/hive.dart';

part 'delivery_location.g.dart';

@HiveType(typeId: 159)
class DeliveryLocationV2 {
  @HiveField(0)
  final double shopLatitude;
  @HiveField(1)
  final double shopLongitude;
  @HiveField(2)
  final String pickUpLocation;
  @HiveField(3)
  final double pickUpLatitude;
  @HiveField(4)
  final double pickUpLongitude;
  @HiveField(5)
  final String dropOffLocation;
  @HiveField(6)
  final double dropOffLatitude;
  @HiveField(7)
  final double dropOffLongitude;
  @HiveField(8)
  final String alternativeLocation;
  @HiveField(9)
  final double alternativeLatitude;
  @HiveField(10)
  final double alternativeLongitude;
  @HiveField(11)
  final bool geofence;
  @HiveField(12)
  final String shopName;
  @HiveField(13)
  final int deliveryId;

  DeliveryLocationV2(
      {this.shopLatitude,
      this.shopLongitude,
      this.pickUpLocation,
      this.pickUpLatitude,
      this.pickUpLongitude,
      this.dropOffLocation,
      this.dropOffLatitude,
      this.dropOffLongitude,
      this.alternativeLocation,
      this.alternativeLatitude,
      this.alternativeLongitude,
      this.shopName,
      this.deliveryId,
      this.geofence});

  factory DeliveryLocationV2.fromJson(Map<String, dynamic> json,
      {String shopName, int deliveryId}) {
    try {
      return DeliveryLocationV2(
          geofence: true,
          shopLatitude: json['shop_latitude'] != null
              ? double.parse(json['shop_latitude'].toString())
              : null,
          shopLongitude: json['shop_longitude'] != null &&
                  json['shop_longitude'].toString().isNotEmpty
              ? double.parse(json['shop_longitude'].toString())
              : null,
          pickUpLocation: json['pickup_location'],
          pickUpLatitude: json['pickup_latitude'] != null
              ? double.parse(json['pickup_latitude'].toString())
              : null,
          pickUpLongitude: json['pickup_longitude'] != null
              ? double.parse(json['pickup_longitude'].toString())
              : null,
          dropOffLocation: json['dropoff_location'],
          dropOffLatitude: json['dropoff_latitude'] != null
              ? double.parse(json['dropoff_latitude'].toString())
              : null,
          dropOffLongitude: json['dropoff_longitude'] != null
              ? double.parse(json['dropoff_longitude'].toString())
              : null,
          alternativeLocation: json['alternative_location'],
          alternativeLatitude: json['alternative_latitude'] != null
              ? double.parse(json['alternative_latitude'].toString())
              : null,
          alternativeLongitude: json['alternative_longitude'] != null
              ? double.parse(json['alternative_longitude'].toString())
              : null,
          shopName: shopName,
          deliveryId: deliveryId);
    } catch (e, stack) {
      throw FormatException('Error parsing delivery location $e $stack', json);
    }
  }
}
