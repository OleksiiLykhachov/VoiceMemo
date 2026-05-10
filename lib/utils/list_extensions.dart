extension ListX<T> on List<T> {
  T? removeWhereAndReturn(bool Function(T item) test) {
    final index = indexWhere(test);
    if (index < 0) {
      return null;
    }

    return removeAt(index);
  }
}
