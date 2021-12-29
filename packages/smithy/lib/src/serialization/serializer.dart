import 'dart:async';

/// A type which handles serializing values of [T] to [WireType].
abstract class Serializer<T, WireType> {
  FutureOr<WireType> serialize(T input);
}

/// A type which handles deserializing values of [T] from [WireType].
abstract class Deserializer<T, WireType> {
  FutureOr<T> deserialize(WireType data);
}
