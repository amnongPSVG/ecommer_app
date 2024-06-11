import 'package:logger/logger.dart';

class TLoggerHelper {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    // custom the logger level base on your needs
    level: Level.debug,
  );

  static void debuge(String message) {
    _logger.d(message);
  }

  static void info(String message) {
    _logger.i(message);
  }

  static void wairning(String message) {
    _logger.w(message);
  }

  static void error(String message, [dynamic error]) {
    _logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}
