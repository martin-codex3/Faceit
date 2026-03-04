import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_hobbies.freezed.dart';
part 'create_hobbies.g.dart';

@freezed
abstract class CreateHobbies with _$CreateHobbies {
  const factory CreateHobbies({required List<String> hobbies}) = _CreateHobbies;

  factory CreateHobbies.fromJson(Map<String, dynamic> json) =>
      _$CreateHobbiesFromJson(json);
}
