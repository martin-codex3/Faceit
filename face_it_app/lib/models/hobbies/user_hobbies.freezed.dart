// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_hobbies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserHobbies {

 int get id; String get title; List<String> get hobbies;
/// Create a copy of UserHobbies
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserHobbiesCopyWith<UserHobbies> get copyWith => _$UserHobbiesCopyWithImpl<UserHobbies>(this as UserHobbies, _$identity);

  /// Serializes this UserHobbies to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserHobbies&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.hobbies, hobbies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(hobbies));

@override
String toString() {
  return 'UserHobbies(id: $id, title: $title, hobbies: $hobbies)';
}


}

/// @nodoc
abstract mixin class $UserHobbiesCopyWith<$Res>  {
  factory $UserHobbiesCopyWith(UserHobbies value, $Res Function(UserHobbies) _then) = _$UserHobbiesCopyWithImpl;
@useResult
$Res call({
 int id, String title, List<String> hobbies
});




}
/// @nodoc
class _$UserHobbiesCopyWithImpl<$Res>
    implements $UserHobbiesCopyWith<$Res> {
  _$UserHobbiesCopyWithImpl(this._self, this._then);

  final UserHobbies _self;
  final $Res Function(UserHobbies) _then;

/// Create a copy of UserHobbies
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? hobbies = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,hobbies: null == hobbies ? _self.hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [UserHobbies].
extension UserHobbiesPatterns on UserHobbies {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserHobbies value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserHobbies() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserHobbies value)  $default,){
final _that = this;
switch (_that) {
case _UserHobbies():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserHobbies value)?  $default,){
final _that = this;
switch (_that) {
case _UserHobbies() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  List<String> hobbies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserHobbies() when $default != null:
return $default(_that.id,_that.title,_that.hobbies);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  List<String> hobbies)  $default,) {final _that = this;
switch (_that) {
case _UserHobbies():
return $default(_that.id,_that.title,_that.hobbies);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  List<String> hobbies)?  $default,) {final _that = this;
switch (_that) {
case _UserHobbies() when $default != null:
return $default(_that.id,_that.title,_that.hobbies);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserHobbies implements UserHobbies {
  const _UserHobbies({required this.id, required this.title, required final  List<String> hobbies}): _hobbies = hobbies;
  factory _UserHobbies.fromJson(Map<String, dynamic> json) => _$UserHobbiesFromJson(json);

@override final  int id;
@override final  String title;
 final  List<String> _hobbies;
@override List<String> get hobbies {
  if (_hobbies is EqualUnmodifiableListView) return _hobbies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hobbies);
}


/// Create a copy of UserHobbies
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserHobbiesCopyWith<_UserHobbies> get copyWith => __$UserHobbiesCopyWithImpl<_UserHobbies>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserHobbiesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserHobbies&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._hobbies, _hobbies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_hobbies));

@override
String toString() {
  return 'UserHobbies(id: $id, title: $title, hobbies: $hobbies)';
}


}

/// @nodoc
abstract mixin class _$UserHobbiesCopyWith<$Res> implements $UserHobbiesCopyWith<$Res> {
  factory _$UserHobbiesCopyWith(_UserHobbies value, $Res Function(_UserHobbies) _then) = __$UserHobbiesCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, List<String> hobbies
});




}
/// @nodoc
class __$UserHobbiesCopyWithImpl<$Res>
    implements _$UserHobbiesCopyWith<$Res> {
  __$UserHobbiesCopyWithImpl(this._self, this._then);

  final _UserHobbies _self;
  final $Res Function(_UserHobbies) _then;

/// Create a copy of UserHobbies
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? hobbies = null,}) {
  return _then(_UserHobbies(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,hobbies: null == hobbies ? _self._hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
