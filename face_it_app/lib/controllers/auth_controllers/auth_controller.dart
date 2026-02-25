import 'dart:async';

import 'package:dio/dio.dart';
import 'package:face_it_app/config/app_config.dart';
import 'package:face_it_app/models/user/user.dart';
import 'package:riverpod/riverpod.dart';

class AuthController extends AsyncNotifier<void> {
  @override
  FutureOr<void> build() {
    throw UnimplementedError();
  }

  // we will attempt to create the user account here
  Future<void> createAccount(User user) async {
    try {
      // we will attempt to create the user account here
      final response = await AppConfig.dio.post(
        "/create-account",
        data: user.toJson(),
      );
      print(response);
    } on DioException catch (error) {
      state = AsyncError(error, StackTrace.current);
    }
  }
}

// the provider for the controller here
final authProvider = AsyncNotifierProvider<AuthController, void>(() {
  return AuthController();
});
