import 'package:dio/dio.dart';

class AppConfig {
  // we will initialize the dio package here
  static final dio = Dio(
    BaseOptions(
      connectTimeout: Duration(seconds: 3000),
      receiveTimeout: Duration(seconds: 2000),
      baseUrl: "https://192.168.1.189:8000/api",
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
    ),
  );
}
