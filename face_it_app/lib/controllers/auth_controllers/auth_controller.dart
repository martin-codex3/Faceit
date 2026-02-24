import 'dart:async';

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
      state = AsyncLoading();

      // we will attempt to create the user account here
    } catch (error) {
      state = AsyncError(error, StackTrace.current);
    }
  }
}
