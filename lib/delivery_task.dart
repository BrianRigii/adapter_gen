import 'package:hive/hive.dart';

import 'delivery_document.dart';

part 'delivery_task.g.dart';

@HiveType(typeId: 78)
class DeliveryTask extends DeliveryDocumentRefrence {
  @override
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String description;
  @HiveField(2)
  final String pickUpLocation;
  @HiveField(3)
  final String pickUpLatitude;
  @HiveField(4)
  final String pickUpLongitude;
  @HiveField(5)
  final String destination;
  @HiveField(6)
  final String destinationLatitude;
  @HiveField(7)
  final String destinationLongitude;
  @HiveField(8)
  final String comments;
  @HiveField(9)
  final DateTime entryTime;
  @override
  @HiveField(10)
  final bool showDeliveryItems;
  @HiveField(11)
  final String taskCategory;
  @HiveField(12)
  final int taskCategoryId;

  DeliveryTask(
      {this.id,
      this.description,
      this.pickUpLocation,
      this.pickUpLatitude,
      this.pickUpLongitude,
      this.destination,
      this.destinationLatitude,
      this.destinationLongitude,
      this.comments,
      this.entryTime,
      this.showDeliveryItems,
      this.taskCategory,
      this.taskCategoryId});

  factory DeliveryTask.fromMap(Map<String, dynamic> json,
      {bool showDeliveryItems}) {
    return DeliveryTask(
      id: json["id"],
      description: json["description"],
      pickUpLocation: json["pickup_location"],
      pickUpLatitude: json["pickup_location_latitude"],
      pickUpLongitude: json["pickup_location_longitude"],
      destination: json["destination"],
      destinationLatitude: json["destination_latitude"],
      destinationLongitude: json["destination_longitude"],
      comments: json["comments"],
      entryTime: json["entry_time"] != null
          ? DateTime.parse(json["entry_time"])
          : null,
      showDeliveryItems: showDeliveryItems,
      taskCategoryId: json["task_category"],
    );
  }
}
