part of 'recources.dart';

abstract final class AppThemes {
  static ThemeData get light =>
      ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal));
  static ThemeData get dark => ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.teal,
      brightness: Brightness.dark,
    ),
  );
}
