import 'package:logger/logger.dart';

class LogProvider {
  static final LogProvider _singleton = LogProvider._init();
  static Logger get logger => _singleton._logger;

  final Logger _logger;

  LogProvider._internal(this._logger);

  factory LogProvider._init() {
    var logLevel = Level.debug;
    assert(() {
      logLevel = Level.debug;
      return true;
    }());
    final logger = Logger(
      filter: ProductionFilter(),
      printer: PrettyPrinter(
        methodCount: 0,
        printEmojis: false,
        printTime: true,
      ),
      level: logLevel,
    );
    return LogProvider._internal(logger);
  }

  static void init() {
    _singleton._logger.i('Logger Initialized!');
  }
}