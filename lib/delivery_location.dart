import 'package:hive/hive.dart';

part 'delivery_location.g.dart';

@HiveType(typeId: 196)
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
  final String destination;
  @HiveField(6)
  final double destinationLatitude;
  @HiveField(7)
  final double destinationLongitude;
  @HiveField(8)
  final String alternativeLocation;
  @HiveField(9)
  final double alternativeLatitude;
  @HiveField(10)
  final double alternativeLongitude;
  @HiveField(11)
  final bool geofencePickUp;
  @HiveField(12)
  final bool geofenceDestination;

  DeliveryLocationV2(
      {this.shopLatitude,
      this.shopLongitude,
      this.pickUpLocation,
      this.pickUpLatitude,
      this.pickUpLongitude,
      this.destination,
      this.destinationLatitude,
      this.destinationLongitude,
      this.alternativeLocation,
      this.alternativeLatitude,
      this.alternativeLongitude,
      this.geofencePickUp,
      this.geofenceDestination});

  factory DeliveryLocationV2.fromMap(Map<String, dynamic> json) {
    try {
      return DeliveryLocationV2(
        shopLatitude: json['shop_latitude'] != null
            ? double.parse(json['shop_latitude'])
            : null,
        shopLongitude: json['shop_longitude'] != null
            ? double.parse(json['shop_longitude'])
            : null,
        pickUpLocation: json['pickup_location'],
        pickUpLatitude: json['pickup_latitude'] != null
            ? double.parse(json['pickup_latitude'])
            : null,
        pickUpLongitude: json['pickup_longitude'] != null
            ? double.parse(json['pickup_longitude'])
            : null,
        destination: json['destination'],
        destinationLatitude: json['destination_latitude'] != null
            ? double.parse(json['destination_latitude'])
            : null,
        destinationLongitude: json['destination_longitude'] != null
            ? double.parse(json['destination_longitude'])
            : null,
        alternativeLocation: json['alternative_location'],
        alternativeLatitude: json['alternative_latitude'] != null
            ? double.parse(json['alternative_latitude'])
            : null,
        alternativeLongitude: json['alternative_longitude'] != null
            ? double.parse(json['alternative_longitude'])
            : null,
        geofencePickUp: json['geofence_pickup'] == 1,
        geofenceDestination: json['geofence_destination'] == 1,
      );
    } catch (error) {
      throw FormatException("Error parsing delivery location $error ", json);
    }
  }

  // LatLng get shopLatLng => shopLatitude == null || shopLongitude == null
  //     ? null
  //     : LatLng(shopLatitude, shopLongitude);

  // LatLng get pickUpLatLng => pickUpLatitude == null || pickUpLongitude == null
  //     ? null
  //     : LatLng(pickUpLatitude, pickUpLongitude);

  // LatLng get destinationLatLng =>
  //     destinationLatitude == null || destinationLongitude == null
  //         ? null
  //         : LatLng(destinationLatitude, destinationLongitude);
}
