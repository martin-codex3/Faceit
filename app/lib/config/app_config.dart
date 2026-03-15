import 'package:dio/dio.dart';

class AppConfig {
  static final dio = Dio(
    BaseOptions(
      headers: {"Content-Type": "application/json"},
      baseUrl: "192.168.1.189:80000/api",
      contentType: "application/json",
      connectTimeout: Duration(seconds: 3000),
      receiveTimeout: Duration(seconds: 5000),
    ),
  );
}
