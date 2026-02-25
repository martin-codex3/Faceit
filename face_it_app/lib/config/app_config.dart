import 'package:dio/dio.dart';

class AppConfig {
  // we will initialize the dio package here
  static final dio = Dio(
    BaseOptions(
      baseUrl: "http://192.168.1.189:8000/api",
      connectTimeout: Duration(milliseconds: 5000),
      receiveTimeout: Duration(milliseconds: 3000),
      headers: {"Content-Type": "application/json"},
    ),
  );
}
