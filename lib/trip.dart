import 'package:hive/hive.dart';

import 'delivery_v2.dart';

part 'trip.g.dart';

@HiveType(typeId: 122)
class Trip {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final DateTime scheduledTime;
  @HiveField(2)
  final DateTime releasedTime;
  @HiveField(3)
  String dispatchLatitude;
  @HiveField(4)
  String dispatchLongitude;
  @HiveField(5)
  DateTime returnTime;
  @HiveField(6)
  String returnLatitude;
  @HiveField(7)
  String returnLongitude;
  @HiveField(8)
  int startOdometer;
  @HiveField(9)
  int endOdometer;
  @HiveField(10)
  List<DeliveryV2> deliveries;
  @HiveField(11)
  DateTime dispatchTime;
  @HiveField(12)
  bool tripStartSynced;
  @HiveField(13)
  bool tripEndSynced;
  @HiveField(14)
  bool fromServer;
  @HiveField(15)
  String undeliveredDeliveries;

  Trip(
      {this.id,
      this.scheduledTime,
      this.releasedTime,
      this.dispatchLatitude,
      this.dispatchLongitude,
      this.returnTime,
      this.returnLatitude,
      this.returnLongitude,
      this.startOdometer,
      this.endOdometer,
      this.dispatchTime,
      this.deliveries});

  factory Trip.fromMap(Map<String, dynamic> json) {
    try {
      int tripId = json["trip_id"];
      int startOdometer() {
        if (json["start_odometer"] != null) {
          var odo = double.parse(json["start_odometer"].toString());
          return odo.toInt();
        } else {
          return 0;
        }
      }

      int endOdometer() {
        if (json["end_odometer"] != null) {
          var odo = double.parse(json["end_odometer"].toString());
          return odo.toInt();
        } else {
          return 0;
        }
      }

      return Trip(
        id: tripId,
        scheduledTime: json["scheduled_time"] != null
            ? DateTime.parse(json["scheduled_time"])
            : null,
        releasedTime: json["released_time"] != null
            ? DateTime.parse(json["released_time"])
            : null,
        dispatchLatitude: json["dispatch_latitude"],
        dispatchLongitude: json["dispatch_longitude"],
        dispatchTime: json["dispatch_time"] != null
            ? DateTime.parse(json["dispatch_time"])
            : null,
        returnTime: json["return_time"] != null
            ? DateTime.parse(json["return_time"])
            : null,
        returnLatitude: json["return_latitude"],
        returnLongitude: json["return_longitude"],
        startOdometer: startOdometer(),
        endOdometer: endOdometer(),
        deliveries: json["deliveries"] != null
            ? List.from(json["deliveries"])
                .map((delivery) => DeliveryV2.fromMap(delivery))
                .toList()
            : [],
      );
    } catch (error) {
      throw FormatException("Error parsing trip $error ", json);
    }
  }

  bool get pendingTrip => returnTime == null;

  bool get tripStarted => dispatchTime != null;

  bool get tripEnded => returnTime != null;

  bool get tripOngoing => tripStarted && !tripEnded;

  // String get formatedStartOdometer =>
  //     formatCurrency(startOdometer).split(".").first;

  // String get formatedScheduleTime =>
  //     formatDate("$scheduledTime", "d MMM, yyyy hh:mm a");

  // List<DeliveryV2> completedDeliveries() {
  //   return deliveries.where((delivery) => delivery.delivered).toList();
  // }

  String timeIn() {
    if (dispatchTime != null) {
      var now = DateTime.now();
      var difference = now.difference(dispatchTime);
      return "${difference.inHours.toString().padLeft(2, "0")}hrs ${(difference.inMinutes % 60).toString().padLeft(2, "0")}min";
    } else {
      return "";
    }
  }
}
