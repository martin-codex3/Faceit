// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  fullname: json['fullname'] as String,
  email: json['email'] as String,
  phoneNumber: json['phoneNumber'] as String,
  username: json['username'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'fullname': instance.fullname,
  'email': instance.email,
  'phoneNumber': instance.phoneNumber,
  'username': instance.username,
  'password': instance.password,
};
