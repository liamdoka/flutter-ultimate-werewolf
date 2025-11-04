extension NullableString on String? {
  bool get isNullOrEmpty => !isNotNullOrEmpty;
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;
}

extension NullableIterable on Iterable? {
  bool get isNullOrEmpty => !isNotNullOrEmpty;
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;
}
