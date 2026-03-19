// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'budget_categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BudgetCategories _$BudgetCategoriesFromJson(Map<String, dynamic> json) =>
    _BudgetCategories(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$BudgetCategoriesToJson(_BudgetCategories instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'categories': instance.categories,
    };
