import 'dart:convert';

import 'package:face_it_app/models/hobbies/user_hobbies.dart';

List<UserHobbies> parseJsonResponse(dynamic responseBody) {
  try {
    final Map<String, dynamic> jsonResponse = jsonDecode(responseBody);
    final List<dynamic> jsonData = jsonResponse[""];

    return jsonData.map((hobby) => UserHobbies.fromJson(hobby)).toList();
  } catch (e) {
    throw Exception("Error parsing the data: $e");
  }
}
