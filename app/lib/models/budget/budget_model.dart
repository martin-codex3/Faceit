import 'package:freezed_annotation/freezed_annotation.dart';

part 'budget_model.freezed.dart';
part 'budget_model.g.dart';

@freezed
abstract class BudgetModel with _$BudgetModel {
  const factory BudgetModel({
    required String itemName,
    required String itemType,
    required String purchaseDate,
    required String amountInHand,
    required String description,
  }) = _BudgetModel;

  factory BudgetModel.fromJson(Map<String, dynamic> json) =>
      _$BudgetModelFromJson(json);
}
