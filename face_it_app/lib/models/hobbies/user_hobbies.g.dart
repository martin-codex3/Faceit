// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_hobbies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserHobbies _$UserHobbiesFromJson(Map<String, dynamic> json) => _UserHobbies(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  hobbies: (json['hobbies'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$UserHobbiesToJson(_UserHobbies instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'hobbies': instance.hobbies,
    };
