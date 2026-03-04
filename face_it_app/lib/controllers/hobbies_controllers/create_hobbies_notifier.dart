import 'dart:async';

import 'package:face_it_app/config/app_config.dart';
import 'package:face_it_app/models/create_hobbies/create_hobbies.dart';
import 'package:riverpod/riverpod.dart';

class CreateHobbiesNotifier extends AsyncNotifier<CreateHobbies> {
  @override
  FutureOr<CreateHobbies> build() {
    throw UnimplementedError();
  }

  // future to add the new hobby
  Future<void> createNewHobby(CreateHobbies newHobby) async {
    try {
      final response = await AppConfig.dio.post(
        "/hobbies",
        data: newHobby.toJson(),
      );

      state = AsyncData(CreateHobbies.fromJson(response.data));
    } catch (error) {
      state = AsyncError(error, StackTrace.current);
    }
  }
}

// the provider for the controller here
final createHobbyProvider =
    AsyncNotifierProvider<CreateHobbiesNotifier, CreateHobbies>(() {
      return CreateHobbiesNotifier();
    });
