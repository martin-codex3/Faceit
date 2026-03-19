import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class SelectedCategoriesController extends AsyncNotifier<List<String>> {
  @override
  Future<List<String>> build() {
    throw UnimplementedError();
  }

  Future<void> handleSelectedCategories(List<String> selectedCategories) async {
    try {
      state = AsyncLoading();
      final categories = selectedCategories;
      state = AsyncData(categories);
    } catch (error) {
      state = AsyncError(error, StackTrace.current);
      rethrow;
    }
  }
}

// the provider will be here
final selectedCategoriesProvider =
    AsyncNotifierProvider<SelectedCategoriesController, List<String>>(() {
      return SelectedCategoriesController();
    });
