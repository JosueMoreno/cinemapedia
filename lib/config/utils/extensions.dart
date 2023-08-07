extension StringExtensions on String? {
  bool get isNull => this == null;

  bool get isNotNull => this != null;
}