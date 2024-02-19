// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_status.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TripStatusAdapter extends TypeAdapter<TripStatus> {
  @override
  final int typeId = 198;

  @override
  TripStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TripStatus.loading;
      case 1:
        return TripStatus.arrivedAtPort;
      case 2:
        return TripStatus.dispatched;
      case 3:
        return TripStatus.pending;
      case 4:
        return TripStatus.ended;
      case 5:
        return TripStatus.cancelled;
      case 6:
        return TripStatus.onTransit;
      case 7:
        return TripStatus.completed;
      default:
        return null;
    }
  }

  @override
  void write(BinaryWriter writer, TripStatus obj) {
    switch (obj) {
      case TripStatus.loading:
        writer.writeByte(0);
        break;
      case TripStatus.arrivedAtPort:
        writer.writeByte(1);
        break;
      case TripStatus.dispatched:
        writer.writeByte(2);
        break;
      case TripStatus.pending:
        writer.writeByte(3);
        break;
      case TripStatus.ended:
        writer.writeByte(4);
        break;
      case TripStatus.cancelled:
        writer.writeByte(5);
        break;
      case TripStatus.onTransit:
        writer.writeByte(6);
        break;
      case TripStatus.completed:
        writer.writeByte(7);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TripStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
