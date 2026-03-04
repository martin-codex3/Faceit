import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:face_it_app/config/app_config.dart';
import 'package:face_it_app/models/hobbies/user_hobbies.dart';
import 'package:face_it_app/utils/json_parser/json_parser.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HobbiesController extends AsyncNotifier<List<UserHobbies>> {
  @override
  FutureOr<List<UserHobbies>> build() async {
    try {
      state = AsyncLoading();
      final response = await AppConfig.dio.get("/hobbies");

      final List<dynamic> jsonData = response.data;

      return jsonData.map((hobby) => UserHobbies.fromJson(hobby)).toList();
    } on DioException catch (e) {
      state = AsyncError(e, StackTrace.current);

      rethrow;
    }
  }
}

// the provider here
final hobbieProvider =
    AsyncNotifierProvider<HobbiesController, List<UserHobbies>>(() {
      return HobbiesController();
    });
