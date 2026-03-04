// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_hobbies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateHobbies _$CreateHobbiesFromJson(Map<String, dynamic> json) =>
    _CreateHobbies(
      hobbies: (json['hobbies'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CreateHobbiesToJson(_CreateHobbies instance) =>
    <String, dynamic>{'hobbies': instance.hobbies};
