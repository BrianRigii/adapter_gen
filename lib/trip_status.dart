import 'package:hive/hive.dart';

part 'trip_status.g.dart';

@HiveType(typeId: 198)
enum TripStatus {
  @HiveField(0)
  loading,
  @HiveField(1)
  arrivedAtPort,
  @HiveField(2)
  dispatched,
  @HiveField(3)
  pickup,
  @HiveField(4)
  delivered,
  @HiveField(5)
  cancelled,
  @HiveField(6)
  onTransit,
  @HiveField(7)
  completed,
}

String tripStatusToString(TripStatus status) {
  switch (status) {
    case TripStatus.loading:
      return "Loading";
    case TripStatus.arrivedAtPort:
      return "Arrived at port";
    case TripStatus.dispatched:
      return "Dispatched";
    case TripStatus.pickup:
      return "Pickup";
    case TripStatus.delivered:
      return "delivered";
    case TripStatus.cancelled:
      return "Cancelled";
    case TripStatus.onTransit:
      return "On transit";
    case TripStatus.completed:
      return "Completed";
    default:
      return "Unknown";
  }
}

TripStatus tripStatusFromString(String status) {
  switch (status.toLowerCase()) {
    case "loading":
      return TripStatus.loading;
    case "arrived at port":
      return TripStatus.arrivedAtPort;
    case "dispatched":
      return TripStatus.dispatched;
    case "pickup":
      return TripStatus.pickup;
    case "deliver":
      return TripStatus.delivered;
    case "cancelled":
      return TripStatus.cancelled;
    case "on transit":
      return TripStatus.onTransit;
    case "completed":
      return TripStatus.completed;
    default:
      return TripStatus.loading;
  }
}
