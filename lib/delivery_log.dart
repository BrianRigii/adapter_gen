import 'package:hive/hive.dart';

part 'delivery_log.g.dart';

@HiveType(typeId: 14)
class DeliveryLog {
  @HiveField(0)
  final int tripId;
  @HiveField(1)
  final int deliveryId;
  @HiveField(2)
  final double latitude;
  @HiveField(3)
  final double longitude;
  @HiveField(4)
  final int activityId;
  @HiveField(5)
  final DateTime entryTime;
  @HiveField(6)
  bool synced;
  @HiveField(7)
  int id;
  DeliveryLog({
    this.tripId,
    this.deliveryId,
    this.latitude,
    this.longitude,
    this.activityId,
    this.entryTime,
    this.synced,
    this.id,
  });
}
