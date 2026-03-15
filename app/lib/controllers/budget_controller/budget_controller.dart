import 'dart:async';
import 'package:app/models/budget/budget_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BudgetController extends AsyncNotifier<void> {
  @override
  FutureOr<void> build() {
    throw UnimplementedError();
  }

  // we will create a function to save the details here
  Future<void> createPersonalBudget(BudgetModel _budgetModel) async {
    print(_budgetModel);
  }
}

// the privider for the controller here
final budgetProvider = AsyncNotifierProvider<BudgetController, void>(() {
  return BudgetController();
});
