import 'package:hive/hive.dart';

import 'universal_model.dart';

/// A utility class that provides convenient methods for working with UniversalModel wrapper in Hive boxes.
/// This class simplifies the storage and retrieval of complex objects using the [UniversalModel] and [UniversalModelAdapter].
class UniversalHiveBox<T extends Model> implements Box<T> {
  final Box<UniversalModel> _box;
  final String _dataType;
  final T Function(Map<String, dynamic>) _fromMapFactory;

  UniversalHiveBox(
    this._box,
    this._fromMapFactory,
  ) : _dataType = T.toString();

  /// Add an object to the box
  Future<int> add(T object) async {
    final wrapper = UniversalModel.fromObject(object, _dataType);
    return await _box.add(wrapper);
  }

  /// Put an object at a specific key
  Future<void> put(dynamic key, T object) async {
    final wrapper = UniversalModel.fromObject(object, _dataType);
    return await _box.put(key, wrapper);
  }

  /// Put an object at a specific index
  Future<void> putAt(int index, T object) async {
    final wrapper = UniversalModel.fromObject(object, _dataType);
    return await _box.putAt(index, wrapper);
  }

  /// Get an object by key
  T get(dynamic key, {T defaultValue}) {
    final wrapper = _box.get(key);
    if (wrapper == null) return defaultValue;
    return wrapper.toObject<T>(_fromMapFactory);
  }

  /// Get an object by index
  T getAt(int index) {
    final wrapper = _box.getAt(index);
    if (wrapper == null) return null;
    return wrapper.toObject<T>(_fromMapFactory);
  }

  /// Get all objects from the box
  List<T> getAll() {
    return _box.values
        .map((wrapper) => wrapper.toObject<T>(_fromMapFactory))
        .toList();
  }

  /// Delete by key
  Future<void> delete(dynamic key) async {
    return await _box.delete(key);
  }

  /// Delete by index
  Future<void> deleteAt(int index) async {
    return await _box.deleteAt(index);
  }

  /// Clear all objects
  Future<int> clear() async {
    return _box.clear();
  }

  /// Get the count of objects in the box
  int get length {
    return _box.values.length;
  }

  /// Check if the box is empty for this data type
  bool get isEmpty {
    return _box.isEmpty;
  }

  /// Check if the box is not empty
  bool get isNotEmpty => !isEmpty;

  /// Get all keys for objects in the box
  Iterable<dynamic> get keys {
    final result = <dynamic>[];
    for (var i = 0; i < _box.length; i++) {
      final wrapper = _box.getAt(i);
      if (wrapper != null) {
        result.add(_box.keyAt(i));
      }
    }
    return result;
  }

  /// Get all values (objects) in the box
  Iterable<T> get values {
    return _box.values.map((wrapper) => wrapper.toObject<T>(_fromMapFactory));
  }

  /// Update an object at a specific key with new data
  Future<void> update(dynamic key, T object) async {
    final existingWrapper = _box.get(key);
    if (existingWrapper != null) {
      final newAdapter = UniversalModel.fromObject(
        object,
        _dataType,
      ).copyWith(
        createdAt: existingWrapper.createdAt,
      );
      await _box.put(key, newAdapter);
    } else {
      throw ArgumentError(
          'Object with key $key not found or has different data type');
    }
  }

  /// Find objects that match a predicate
  List<T> where(bool Function(T) predicate) {
    return values.where(predicate).toList();
  }

  /// Find the first object that matches a predicate
  T firstWhere(bool Function(T) predicate, {T Function() orElse}) {
    try {
      return values.firstWhere(predicate);
    } catch (e) {
      if (orElse != null) {
        return orElse();
      }
      rethrow;
    }
  }

  /// Check if any object matches a predicate
  bool any(bool Function(T) predicate) {
    return values.any(predicate);
  }

  /// Count objects that match a predicate
  int count(bool Function(T) predicate) {
    return values.where(predicate).length;
  }

  /// Add multiple objects at once
  Future<Iterable<int>> addAll(Iterable<T> objects) async {
    final wrappers = objects
        .map((obj) => UniversalModel.fromObject(obj, _dataType))
        .toList();
    return await _box.addAll(wrappers);
  }

  /// Put multiple objects at once
  Future<void> putAll(Map<dynamic, T> entries) async {
    final Map<dynamic, UniversalModel> wrappers = {};
    entries.forEach((key, obj) {
      wrappers[key] = UniversalModel.fromObject(obj, _dataType);
    });
    return await _box.putAll(wrappers);
  }

  /// Create a UniversalHiveBox from an existing Hive box name
  static Future<UniversalHiveBox<T>> openBox<T extends Model>(
    String boxName,
    T Function(Map<String, dynamic>) fromMapFactory,
  ) async {
    final box = await Hive.openBox<UniversalModel>(boxName);

    return UniversalHiveBox<T>(box, fromMapFactory);
  }

  @override
  Future<void> close() {
    return _box.close();
  }

  @override
  Future<void> compact() {
    return _box.compact();
  }

  @override
  bool containsKey(key) {
    return _box.containsKey(key);
  }

  @override
  Future<void> deleteAll(Iterable keys) {
    return _box.deleteAll(keys);
  }

  @override
  Future<void> deleteFromDisk() {
    return _box.deleteFromDisk();
  }

  @override
  bool get isOpen => _box.isOpen;

  @override
  keyAt(int index) {
    return _box.keyAt(index);
  }

  @override
  bool get lazy => _box.lazy;

  @override
  String get name => _box.name;

  @override
  String get path => _box.path;

  @override
  Map<dynamic, T> toMap() {
    final Map<dynamic, T> map = {};
    for (var entry in _box.toMap().entries) {
      map[entry.key] = entry.value.toObject<T>(_fromMapFactory);
    }
    return map;
  }

  @override
  Iterable<T> valuesBetween({startKey, endKey}) {
    return _box
        .valuesBetween(startKey: startKey, endKey: endKey)
        .map((model) => model.toObject<T>(_fromMapFactory));
  }

  @override
  Stream<BoxEvent> watch({key}) {
    return _box.watch(key: key);
  }
}

abstract class Model {
  // Required toLocalMap method for converting to a map
  Map<String, dynamic> toLocalMap();
}
