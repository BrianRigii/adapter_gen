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
  List<String> imagePath;
  @HiveField(5)
  final String comments;
  @HiveField(6)
  final DateTime entryTime;
  @HiveField(7)
  bool synced;
  @HiveField(8)
  int id;
  @HiveField(9)
  final String visitId;
  @HiveField(10)
  final int tripId;
  @HiveField(11)
  final int priority;

  DeliveryLog(
      {this.deliveryId,
      this.activityId,
      this.latitude,
      this.longitude,
      this.imagePath,
      this.comments,
      this.id,
      this.visitId,
      this.tripId,
      this.synced = false,
      this.priority,
      this.entryTime});

  DeliveryLog copyWith({double latitude, double longitude}) {
    return DeliveryLog(
        deliveryId: this.deliveryId,
        activityId: this.activityId,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        imagePath: this.imagePath,
        comments: this.comments,
        id: this.id,
        synced: this.synced,
        entryTime: this.entryTime,
        visitId: visitId);
  }

  Map<String, dynamic> get toMap => {
        "delivery_id": deliveryId,
        "activity_id": activityId,
        "latitude": latitude.toString(),
        "longitude": longitude.toString(),
        "image_path": imagePath,
        "comments": comments,
        /*      "entry_time": formatDate(entryTime.toString(), "xt"), */
      };
}
