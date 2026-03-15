// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'budget_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BudgetModel {

 String get itemName; String get itemType; String get purchaseDate; String get amountInHand; String get description;
/// Create a copy of BudgetModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BudgetModelCopyWith<BudgetModel> get copyWith => _$BudgetModelCopyWithImpl<BudgetModel>(this as BudgetModel, _$identity);

  /// Serializes this BudgetModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BudgetModel&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.itemType, itemType) || other.itemType == itemType)&&(identical(other.purchaseDate, purchaseDate) || other.purchaseDate == purchaseDate)&&(identical(other.amountInHand, amountInHand) || other.amountInHand == amountInHand)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemName,itemType,purchaseDate,amountInHand,description);

@override
String toString() {
  return 'BudgetModel(itemName: $itemName, itemType: $itemType, purchaseDate: $purchaseDate, amountInHand: $amountInHand, description: $description)';
}


}

/// @nodoc
abstract mixin class $BudgetModelCopyWith<$Res>  {
  factory $BudgetModelCopyWith(BudgetModel value, $Res Function(BudgetModel) _then) = _$BudgetModelCopyWithImpl;
@useResult
$Res call({
 String itemName, String itemType, String purchaseDate, String amountInHand, String description
});




}
/// @nodoc
class _$BudgetModelCopyWithImpl<$Res>
    implements $BudgetModelCopyWith<$Res> {
  _$BudgetModelCopyWithImpl(this._self, this._then);

  final BudgetModel _self;
  final $Res Function(BudgetModel) _then;

/// Create a copy of BudgetModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemName = null,Object? itemType = null,Object? purchaseDate = null,Object? amountInHand = null,Object? description = null,}) {
  return _then(_self.copyWith(
itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,itemType: null == itemType ? _self.itemType : itemType // ignore: cast_nullable_to_non_nullable
as String,purchaseDate: null == purchaseDate ? _self.purchaseDate : purchaseDate // ignore: cast_nullable_to_non_nullable
as String,amountInHand: null == amountInHand ? _self.amountInHand : amountInHand // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BudgetModel].
extension BudgetModelPatterns on BudgetModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BudgetModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BudgetModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BudgetModel value)  $default,){
final _that = this;
switch (_that) {
case _BudgetModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BudgetModel value)?  $default,){
final _that = this;
switch (_that) {
case _BudgetModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String itemName,  String itemType,  String purchaseDate,  String amountInHand,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BudgetModel() when $default != null:
return $default(_that.itemName,_that.itemType,_that.purchaseDate,_that.amountInHand,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String itemName,  String itemType,  String purchaseDate,  String amountInHand,  String description)  $default,) {final _that = this;
switch (_that) {
case _BudgetModel():
return $default(_that.itemName,_that.itemType,_that.purchaseDate,_that.amountInHand,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String itemName,  String itemType,  String purchaseDate,  String amountInHand,  String description)?  $default,) {final _that = this;
switch (_that) {
case _BudgetModel() when $default != null:
return $default(_that.itemName,_that.itemType,_that.purchaseDate,_that.amountInHand,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BudgetModel implements BudgetModel {
  const _BudgetModel({required this.itemName, required this.itemType, required this.purchaseDate, required this.amountInHand, required this.description});
  factory _BudgetModel.fromJson(Map<String, dynamic> json) => _$BudgetModelFromJson(json);

@override final  String itemName;
@override final  String itemType;
@override final  String purchaseDate;
@override final  String amountInHand;
@override final  String description;

/// Create a copy of BudgetModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BudgetModelCopyWith<_BudgetModel> get copyWith => __$BudgetModelCopyWithImpl<_BudgetModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BudgetModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BudgetModel&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.itemType, itemType) || other.itemType == itemType)&&(identical(other.purchaseDate, purchaseDate) || other.purchaseDate == purchaseDate)&&(identical(other.amountInHand, amountInHand) || other.amountInHand == amountInHand)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemName,itemType,purchaseDate,amountInHand,description);

@override
String toString() {
  return 'BudgetModel(itemName: $itemName, itemType: $itemType, purchaseDate: $purchaseDate, amountInHand: $amountInHand, description: $description)';
}


}

/// @nodoc
abstract mixin class _$BudgetModelCopyWith<$Res> implements $BudgetModelCopyWith<$Res> {
  factory _$BudgetModelCopyWith(_BudgetModel value, $Res Function(_BudgetModel) _then) = __$BudgetModelCopyWithImpl;
@override @useResult
$Res call({
 String itemName, String itemType, String purchaseDate, String amountInHand, String description
});




}
/// @nodoc
class __$BudgetModelCopyWithImpl<$Res>
    implements _$BudgetModelCopyWith<$Res> {
  __$BudgetModelCopyWithImpl(this._self, this._then);

  final _BudgetModel _self;
  final $Res Function(_BudgetModel) _then;

/// Create a copy of BudgetModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemName = null,Object? itemType = null,Object? purchaseDate = null,Object? amountInHand = null,Object? description = null,}) {
  return _then(_BudgetModel(
itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,itemType: null == itemType ? _self.itemType : itemType // ignore: cast_nullable_to_non_nullable
as String,purchaseDate: null == purchaseDate ? _self.purchaseDate : purchaseDate // ignore: cast_nullable_to_non_nullable
as String,amountInHand: null == amountInHand ? _self.amountInHand : amountInHand // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
