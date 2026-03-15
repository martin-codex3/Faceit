// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budget_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BudgetModel _$BudgetModelFromJson(Map<String, dynamic> json) => _BudgetModel(
  itemName: json['itemName'] as String,
  itemType: json['itemType'] as String,
  purchaseDate: json['purchaseDate'] as String,
  amountInHand: json['amountInHand'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$BudgetModelToJson(_BudgetModel instance) =>
    <String, dynamic>{
      'itemName': instance.itemName,
      'itemType': instance.itemType,
      'purchaseDate': instance.purchaseDate,
      'amountInHand': instance.amountInHand,
      'description': instance.description,
    };
