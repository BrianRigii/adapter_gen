import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'universal_model_adapter.g.dart';

/// A universal Hive model that can store any Map-based data structure.
@HiveType(typeId: 0)
class UniversalModel {
  @HiveField(0)
  final String dataType;

  @HiveField(1)
  final Map<String, dynamic> data;

  @HiveField(3)
  final DateTime createdAt;

  @HiveField(4)
  final DateTime updatedAt;

  const UniversalModel({
    @required this.dataType,
    @required this.data,
    @required this.createdAt,
    @required this.updatedAt,
  });

  /// Creates a UniversalModel from any object that has a toMap method
  factory UniversalModel.fromObject(dynamic object, String dataType) {
    Map<String, dynamic> data;

    if (object is Map<String, dynamic>) {
      data = Map<String, dynamic>.from(object);
    } else if (object is Map) {
      data = _convertMapToStringDynamic(object);
    } else {
      try {
        final mapData = object.toMap();
        data = mapData is Map<String, dynamic>
            ? mapData
            : _convertMapToStringDynamic(mapData);
      } catch (e) {
        throw ArgumentError(
          'Object must have a toMap() method or be a Map. '
          'Object type: ${object.runtimeType}',
        );
      }
    }

    final now = DateTime.now();
    return UniversalModel(
      dataType: dataType,
      data: data,
      createdAt: now,
      updatedAt: now,
    );
  }

  /// Creates a UniversalModel from a JSON string
  factory UniversalModel.fromJson(
    String jsonString,
    String dataType, {
    Map<String, dynamic> metadata,
  }) {
    try {
      final decoded = jsonDecode(jsonString);
      final data = decoded is Map<String, dynamic>
          ? decoded
          : _convertMapToStringDynamic(decoded);

      final now = DateTime.now();
      return UniversalModel(
        dataType: dataType,
        data: data,
        createdAt: now,
        updatedAt: now,
      );
    } catch (e) {
      throw ArgumentError('Invalid JSON string: $e');
    }
  }

  /// Converts the stored data back to a specific type using a factory function
  T toObject<T>(T Function(Map<String, dynamic>) fromMapFactory) {
    try {
      return fromMapFactory(data);
    } catch (e) {
      throw ArgumentError(
        'Failed to convert data to ${T.toString()}: $e. '
        'Data type: $dataType',
      );
    }
  }

  /// Converts the stored data to JSON string
  String toJson() {
    return jsonEncode(data);
  }

  /// Creates a copy with updated data
  UniversalModel copyWith({
    String dataType,
    Map<String, dynamic> data,
    DateTime createdAt,
    DateTime updatedAt,
  }) {
    return UniversalModel(
      dataType: dataType ?? this.dataType,
      data: data ?? Map<String, dynamic>.from(this.data),
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? DateTime.now(),
    );
  }

  /// Updates the data while maintaining the same dataType and metadata
  UniversalModel updateData(Map<String, dynamic> newData) {
    return copyWith(
      data: Map<String, dynamic>.from(newData),
      updatedAt: DateTime.now(),
    );
  }

  /// Helper method to convert any Map to Map<String, dynamic>
  static Map<String, dynamic> _convertMapToStringDynamic(dynamic map) {
    if (map == null) return <String, dynamic>{};

    try {
      final jsonString = jsonEncode(map);
      final decodedMap = jsonDecode(jsonString);

      if (decodedMap is Map) {
        final result = <String, dynamic>{};
        decodedMap.forEach((key, value) {
          result[key.toString()] = value;
        });
        return result;
      } else {
        throw ArgumentError('JSON decode did not return a Map');
      }
    } catch (e) {
      // Fallback to manual conversion if JSON encoding fails
      if (map is Map<String, dynamic>) {
        return Map<String, dynamic>.from(map);
      } else if (map is Map) {
        final result = <String, dynamic>{};
        map.forEach((key, value) {
          result[key.toString()] = value;
        });
        return result;
      } else {
        throw ArgumentError('Expected Map but got ${map.runtimeType}');
      }
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UniversalModel &&
          runtimeType == other.runtimeType &&
          dataType == other.dataType &&
          _mapsEqual(data, other.data);

  @override
  int get hashCode => dataType.hashCode ^ data.hashCode;

  bool _mapsEqual(Map<String, dynamic> map1, Map<String, dynamic> map2) {
    if (map1.length != map2.length) return false;
    for (var key in map1.keys) {
      if (!map2.containsKey(key) || map1[key] != map2[key]) return false;
    }
    return true;
  }

  @override
  String toString() {
    return 'UniversalAdapter{'
        'dataType: $dataType, '
        'data: $data, '
        'createdAt: $createdAt, '
        'updatedAt: $updatedAt'
        '}';
  }
}
