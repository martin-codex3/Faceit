// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_hobbies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateHobbies {

 List<String> get hobbies;
/// Create a copy of CreateHobbies
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateHobbiesCopyWith<CreateHobbies> get copyWith => _$CreateHobbiesCopyWithImpl<CreateHobbies>(this as CreateHobbies, _$identity);

  /// Serializes this CreateHobbies to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateHobbies&&const DeepCollectionEquality().equals(other.hobbies, hobbies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(hobbies));

@override
String toString() {
  return 'CreateHobbies(hobbies: $hobbies)';
}


}

/// @nodoc
abstract mixin class $CreateHobbiesCopyWith<$Res>  {
  factory $CreateHobbiesCopyWith(CreateHobbies value, $Res Function(CreateHobbies) _then) = _$CreateHobbiesCopyWithImpl;
@useResult
$Res call({
 List<String> hobbies
});




}
/// @nodoc
class _$CreateHobbiesCopyWithImpl<$Res>
    implements $CreateHobbiesCopyWith<$Res> {
  _$CreateHobbiesCopyWithImpl(this._self, this._then);

  final CreateHobbies _self;
  final $Res Function(CreateHobbies) _then;

/// Create a copy of CreateHobbies
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hobbies = null,}) {
  return _then(_self.copyWith(
hobbies: null == hobbies ? _self.hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateHobbies].
extension CreateHobbiesPatterns on CreateHobbies {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateHobbies value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateHobbies() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateHobbies value)  $default,){
final _that = this;
switch (_that) {
case _CreateHobbies():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateHobbies value)?  $default,){
final _that = this;
switch (_that) {
case _CreateHobbies() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> hobbies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateHobbies() when $default != null:
return $default(_that.hobbies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> hobbies)  $default,) {final _that = this;
switch (_that) {
case _CreateHobbies():
return $default(_that.hobbies);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> hobbies)?  $default,) {final _that = this;
switch (_that) {
case _CreateHobbies() when $default != null:
return $default(_that.hobbies);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateHobbies implements CreateHobbies {
  const _CreateHobbies({required final  List<String> hobbies}): _hobbies = hobbies;
  factory _CreateHobbies.fromJson(Map<String, dynamic> json) => _$CreateHobbiesFromJson(json);

 final  List<String> _hobbies;
@override List<String> get hobbies {
  if (_hobbies is EqualUnmodifiableListView) return _hobbies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hobbies);
}


/// Create a copy of CreateHobbies
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateHobbiesCopyWith<_CreateHobbies> get copyWith => __$CreateHobbiesCopyWithImpl<_CreateHobbies>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateHobbiesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateHobbies&&const DeepCollectionEquality().equals(other._hobbies, _hobbies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_hobbies));

@override
String toString() {
  return 'CreateHobbies(hobbies: $hobbies)';
}


}

/// @nodoc
abstract mixin class _$CreateHobbiesCopyWith<$Res> implements $CreateHobbiesCopyWith<$Res> {
  factory _$CreateHobbiesCopyWith(_CreateHobbies value, $Res Function(_CreateHobbies) _then) = __$CreateHobbiesCopyWithImpl;
@override @useResult
$Res call({
 List<String> hobbies
});




}
/// @nodoc
class __$CreateHobbiesCopyWithImpl<$Res>
    implements _$CreateHobbiesCopyWith<$Res> {
  __$CreateHobbiesCopyWithImpl(this._self, this._then);

  final _CreateHobbies _self;
  final $Res Function(_CreateHobbies) _then;

/// Create a copy of CreateHobbies
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hobbies = null,}) {
  return _then(_CreateHobbies(
hobbies: null == hobbies ? _self._hobbies : hobbies // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
