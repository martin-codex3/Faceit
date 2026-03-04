import 'package:freezed_annotation/freezed_annotation.dart';

part '../hobbies_response/hobbies_response.freeze.dart';
part '../hobbies_response/hobbies_response.g.dart';

@freezed
abstract class CreateHobbies with _$CreateHobbies {
  const factory CreateHobbies({required List<String> hobbies}) = _CreateHobbies;

  factory CreateHobbies.fromjson(Map<String, dynamic> json) =>
      _$CreateHobbiesFromJson(json);
}
