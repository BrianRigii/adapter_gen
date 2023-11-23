import 'package:hive/hive.dart';

part 'delivery_location.g.dart';

@HiveType(typeId: 151)
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
      return DeliveryLocationV2();
    } catch (error) {
      throw FormatException("Error parsing delivery location $error ", json);
    }
  }
}
