// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_task.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeliveryTaskAdapter extends TypeAdapter<DeliveryTask> {
  @override
  final int typeId = 78;

  @override
  DeliveryTask read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeliveryTask(
      id: fields[0] as int,
      description: fields[1] as String,
      pickUpLocation: fields[2] as String,
      pickUpLatitude: fields[3] as String,
      pickUpLongitude: fields[4] as String,
      destination: fields[5] as String,
      destinationLatitude: fields[6] as String,
      destinationLongitude: fields[7] as String,
      comments: fields[8] as String,
      entryTime: fields[9] as DateTime,
      showDeliveryItems: fields[10] as bool,
      taskCategory: fields[11] as String,
      taskCategoryId: fields[12] as int,
    );
  }

  @override
  void write(BinaryWriter writer, DeliveryTask obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.pickUpLocation)
      ..writeByte(3)
      ..write(obj.pickUpLatitude)
      ..writeByte(4)
      ..write(obj.pickUpLongitude)
      ..writeByte(5)
      ..write(obj.destination)
      ..writeByte(6)
      ..write(obj.destinationLatitude)
      ..writeByte(7)
      ..write(obj.destinationLongitude)
      ..writeByte(8)
      ..write(obj.comments)
      ..writeByte(9)
      ..write(obj.entryTime)
      ..writeByte(10)
      ..write(obj.showDeliveryItems)
      ..writeByte(11)
      ..write(obj.taskCategory)
      ..writeByte(12)
      ..write(obj.taskCategoryId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeliveryTaskAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
