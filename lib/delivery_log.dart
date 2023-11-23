import 'package:hive/hive.dart';

part 'delivery_log.g.dart';

@HiveType(typeId: 158)
class DeliveryLog {
  @HiveField(0)
  final int deliveryId;
  @HiveField(1)
  final int activityId;
  @HiveField(2)
  final double latitude;
  @HiveField(3)
  final double longitude;
  @HiveField(4)
  final String imagePath;
  @HiveField(5)
  final String comments;
  @HiveField(6)
  final DateTime entryTime;
  @HiveField(7)
  bool synced;
  @HiveField(8)
  int id;

  DeliveryLog(
      {this.deliveryId,
      this.activityId,
      this.latitude,
      this.longitude,
      this.imagePath,
      this.comments,
      this.id,
      this.entryTime});
}
