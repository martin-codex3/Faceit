import 'dart:async';

import 'package:app/config/app_config.dart';
import 'package:app/models/budget_categories/budget_categories.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BudgetCategoriesController extends AsyncNotifier<List<BudgetCategories>> {
  @override
  Future<List<BudgetCategories>> build() async {
    final response = await AppConfig.dio.get("/budget-categories");

    final List<dynamic> allCategories = response.data as List<dynamic>;

    final categories = allCategories
        .map((category) => BudgetCategories.fromJson(category))
        .toList();

    return categories;
  }

  Future<List<String>> handleSelectedCategories(
    List<String> selectedCategories,
  ) async {
    return selectedCategories;
  }
}

// the provider
final budgetCategoriesProvider =
    AsyncNotifierProvider<BudgetCategoriesController, List<BudgetCategories>>(
      () {
        return BudgetCategoriesController();
      },
    );
