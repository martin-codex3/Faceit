import 'package:freezed_annotation/freezed_annotation.dart';

part 'budget_categories.freezed.dart';
part 'budget_categories.g.dart';

@freezed
abstract class BudgetCategories with _$BudgetCategories {
  const factory BudgetCategories({
    required int id,
    required String title,
    required List<String> categories,
  }) = _BudgetCategories;

  factory BudgetCategories.fromJson(Map<String, dynamic> json) =>
      _$BudgetCategoriesFromJson(json);
}
