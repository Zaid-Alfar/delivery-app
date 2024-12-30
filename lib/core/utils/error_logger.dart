import 'package:dio/dio.dart';

class ParseErrorLogger {
  void logError(
    Object error,
    StackTrace stackTrace,
    RequestOptions options,
  ) {
    print('Error occurred while making a request:');
    print('URL: ${options.uri}');
    print('Method: ${options.method}');
    print('Headers: ${options.headers}');
    print('Error: $error');
    print('StackTrace: $stackTrace');
    // Optionally, you can send this error to an external service.
  }
}
