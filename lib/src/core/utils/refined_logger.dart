import 'dart:developer' as developer;
import 'package:flutter/foundation.dart';

const logger = RefinedLogger();

final class RefinedLogger {
  const RefinedLogger();
  void warn(String message, {Object? error, StackTrace? stackTrace}) =>
      developer.log(
        message,
        name: 'Breeze',
        level: 900,
        error: error,
        stackTrace: stackTrace,
      );
  void logZoneError(Object error, StackTrace stack) => developer.log(
    'Application error',
    name: 'Breeze',
    error: error,
    stackTrace: stack,
  );
  void logFlutterError(FlutterErrorDetails details) {
    FlutterError.presentError(details);
    logZoneError(details.exception, details.stack ?? StackTrace.current);
  }
}
