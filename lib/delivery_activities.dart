import 'package:hive/hive.dart';

part 'delivery_activities.g.dart';

@HiveType(typeId: 154)
class DeliveryActivities {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final String slug;
  @HiveField(4)
  final int priority;

  DeliveryActivities(
      {this.id, this.title, this.description, this.slug, this.priority});

  factory DeliveryActivities.fromJson(json) {
    try {
      return DeliveryActivities(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        slug: json['slug'],
      );
    } catch (error, stack) {
      throw FormatException(
          'Error parsing delivery activities $error $stack', json);
    }
  }
}
