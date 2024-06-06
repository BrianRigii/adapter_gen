import 'package:hive/hive.dart';

part 'delivery_activities.g.dart';

@HiveType(typeId: 197)
class DeliveryActivity {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final DeliveryActivitySlug slug;
  @HiveField(4)
  final int priority;
  @HiveField(5)
  final bool isCheckinActivity;

  DeliveryActivity(
      {this.id,
      this.title,
      this.description,
      this.slug,
      this.priority,
      this.isCheckinActivity = true});

  factory DeliveryActivity.fromJson(json) {
    try {
      int priority = json['priority'] != null ? json['pivot']['priority'] : 0;
      return DeliveryActivity(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        slug: deliveryActivitySlugFromString(json['slug']),
        isCheckinActivity: json['use_in_checkin'] == 1 ? true : false,
        priority: priority,
      );
    } catch (error, stack) {
      throw FormatException(
          'Error parsing delivery activities $error $stack', json);
    }
  }
}

String deliveryActivitySlugToString(DeliveryActivitySlug slug) {
  switch (slug) {
    case DeliveryActivitySlug.DELIVERY:
      return "deliver";
    case DeliveryActivitySlug.PICKUP:
      return "pickup";
    case DeliveryActivitySlug.ARRIVED_AT_PORT:
      return "arrived at port";
    default:
      return null;
  }
}

DeliveryActivitySlug deliveryActivitySlugFromString(String slug) {
  switch (slug) {
    case "deliver":
      return DeliveryActivitySlug.DELIVERY;
    case "pickup":
      return DeliveryActivitySlug.PICKUP;
    case "arrived-at-port":
      return DeliveryActivitySlug.ARRIVED_AT_PORT;
    default:
      return null;
  }
}

@HiveType(typeId: 155)
enum DeliveryActivitySlug {
  @HiveField(0)
  DELIVERY,
  @HiveField(1)
  PICKUP,
  @HiveField(2)
  ARRIVED_AT_PORT
}
