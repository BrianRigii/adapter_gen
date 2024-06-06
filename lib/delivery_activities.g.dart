// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_activities.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeliveryActivitySlugAdapter extends TypeAdapter<DeliveryActivitySlug> {
  @override
  final int typeId = 155;

  @override
  DeliveryActivitySlug read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return DeliveryActivitySlug.DELIVERY;
      case 1:
        return DeliveryActivitySlug.PICKUP;
      case 2:
        return DeliveryActivitySlug.ARRIVED_AT_PORT;
      default:
        return null;
    }
  }

  @override
  void write(BinaryWriter writer, DeliveryActivitySlug obj) {
    switch (obj) {
      case DeliveryActivitySlug.DELIVERY:
        writer.writeByte(0);
        break;
      case DeliveryActivitySlug.PICKUP:
        writer.writeByte(1);
        break;
      case DeliveryActivitySlug.ARRIVED_AT_PORT:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeliveryActivitySlugAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DeliveryActivityAdapter extends TypeAdapter<DeliveryActivity> {
  @override
  final int typeId = 197;

  @override
  DeliveryActivity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeliveryActivity(
      id: fields[0] as int,
      title: fields[1] as String,
      description: fields[2] as String,
      slug: fields[3] as DeliveryActivitySlug,
      priority: fields[4] as int,
      isCheckinActivity: fields[5] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, DeliveryActivity obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.slug)
      ..writeByte(4)
      ..write(obj.priority)
      ..writeByte(5)
      ..write(obj.isCheckinActivity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeliveryActivityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
