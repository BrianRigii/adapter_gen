import 'package:hive/hive.dart';

part 'delivery_session.g.dart';

@HiveType(typeId: 151)
class DeliverySession {
  @HiveField(0)
  final int deliveryId;
  @HiveField(1)
  final double latitude;
  @HiveField(2)
  final double longitude;
  @HiveField(3)
  final DateTime startTime;
  @HiveField(4)
  String photo;
  @HiveField(5)
  int actvityId;
  @HiveField(6)
  int serverId;
  @HiveField(7)
  bool shouldSync;
  @HiveField(8)
  DateTime endTime;
  @HiveField(9)
  DateTime entryTime;
  @HiveField(10)
  double endLatitude;
  @HiveField(11)
  double endLongitude;

  DeliverySession(
      {this.deliveryId,
      this.latitude,
      this.longitude,
      this.actvityId,
      this.startTime,
      this.photo,
      this.endTime,
      this.serverId,
      this.entryTime,
      this.shouldSync = false});
}
