import 'package:dio/dio.dart';
import 'package:face_it_app/config/app_config.dart';
import 'package:face_it_app/models/user/user.dart';
import 'package:face_it_app/models/user_response/user_response.dart';
import 'package:riverpod/riverpod.dart';

class AuthController extends AsyncNotifier<UserResponse?> {
  @override
  Future<UserResponse?> build() {
    throw UnimplementedError();
  }

  // we will attempt to create the user account here
  Future<void> createAccount(User user) async {
    try {
      // we will attempt to create the user account here

      state = AsyncLoading();
      final response = await AppConfig.dio.post(
        "/create-account",
        data: user.toJson(),
      );

      // we will get the return response here
      final jsonData = UserResponse.fromJson(response.data);

      state = AsyncData(jsonData);
    } on DioException catch (error) {
      state = AsyncError(error, StackTrace.current);
    }
  }
}

// the provider for the controller here
final authProvider = AsyncNotifierProvider<AuthController, UserResponse?>(() {
  return AuthController();
});
