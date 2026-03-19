// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'budget_categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BudgetCategories {

 int get id; String get title; List<String> get categories;
/// Create a copy of BudgetCategories
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BudgetCategoriesCopyWith<BudgetCategories> get copyWith => _$BudgetCategoriesCopyWithImpl<BudgetCategories>(this as BudgetCategories, _$identity);

  /// Serializes this BudgetCategories to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BudgetCategories&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.categories, categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'BudgetCategories(id: $id, title: $title, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $BudgetCategoriesCopyWith<$Res>  {
  factory $BudgetCategoriesCopyWith(BudgetCategories value, $Res Function(BudgetCategories) _then) = _$BudgetCategoriesCopyWithImpl;
@useResult
$Res call({
 int id, String title, List<String> categories
});




}
/// @nodoc
class _$BudgetCategoriesCopyWithImpl<$Res>
    implements $BudgetCategoriesCopyWith<$Res> {
  _$BudgetCategoriesCopyWithImpl(this._self, this._then);

  final BudgetCategories _self;
  final $Res Function(BudgetCategories) _then;

/// Create a copy of BudgetCategories
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? categories = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [BudgetCategories].
extension BudgetCategoriesPatterns on BudgetCategories {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BudgetCategories value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BudgetCategories() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BudgetCategories value)  $default,){
final _that = this;
switch (_that) {
case _BudgetCategories():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BudgetCategories value)?  $default,){
final _that = this;
switch (_that) {
case _BudgetCategories() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  List<String> categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BudgetCategories() when $default != null:
return $default(_that.id,_that.title,_that.categories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  List<String> categories)  $default,) {final _that = this;
switch (_that) {
case _BudgetCategories():
return $default(_that.id,_that.title,_that.categories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  List<String> categories)?  $default,) {final _that = this;
switch (_that) {
case _BudgetCategories() when $default != null:
return $default(_that.id,_that.title,_that.categories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BudgetCategories implements BudgetCategories {
  const _BudgetCategories({required this.id, required this.title, required final  List<String> categories}): _categories = categories;
  factory _BudgetCategories.fromJson(Map<String, dynamic> json) => _$BudgetCategoriesFromJson(json);

@override final  int id;
@override final  String title;
 final  List<String> _categories;
@override List<String> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of BudgetCategories
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BudgetCategoriesCopyWith<_BudgetCategories> get copyWith => __$BudgetCategoriesCopyWithImpl<_BudgetCategories>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BudgetCategoriesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BudgetCategories&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'BudgetCategories(id: $id, title: $title, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$BudgetCategoriesCopyWith<$Res> implements $BudgetCategoriesCopyWith<$Res> {
  factory _$BudgetCategoriesCopyWith(_BudgetCategories value, $Res Function(_BudgetCategories) _then) = __$BudgetCategoriesCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, List<String> categories
});




}
/// @nodoc
class __$BudgetCategoriesCopyWithImpl<$Res>
    implements _$BudgetCategoriesCopyWith<$Res> {
  __$BudgetCategoriesCopyWithImpl(this._self, this._then);

  final _BudgetCategories _self;
  final $Res Function(_BudgetCategories) _then;

/// Create a copy of BudgetCategories
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? categories = null,}) {
  return _then(_BudgetCategories(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
