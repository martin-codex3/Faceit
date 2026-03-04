import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_hobbies.freezed.dart';
part 'user_hobbies.g.dart';

@freezed
abstract class UserHobbies with _$UserHobbies {
  const factory UserHobbies({
    required int id,
    required String title,
    required List<String> hobbies,
  }) = _UserHobbies;

  factory UserHobbies.fromJson(Map<String, dynamic> json) =>
      _$UserHobbiesFromJson(json);
}
