import 'package:app/controllers/budget_controller/budget_categories_controller.dart';
import 'package:app/shared/styled_body.dart';
import 'package:app/shared/styled_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BudgetCategoriesPage extends ConsumerStatefulWidget {
  const BudgetCategoriesPage({super.key});

  @override
  ConsumerState<BudgetCategoriesPage> createState() =>
      _BudgetCategoriesPageState();
}

class _BudgetCategoriesPageState extends ConsumerState<BudgetCategoriesPage> {
  @override
  Widget build(BuildContext context) {
    final categoriesProvider = ref.watch(budgetCategoriesProvider);
    return Scaffold(
      appBar: AppBar(title: StyledTitle(text: "Budget Categories")),
      body: categoriesProvider.when(
        data: (data) => ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    children: data[index].categories.map((e) {
                      return FilterChip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        label: Text(data[index].title.toString()),
                        onSelected: (value) {},
                      );
                    }).toList(),
                  ),
                ],
              ),
            );
          },
        ),
        error: (error, stackTrace) {
          return Center(
            child: StyledBody(text: "Something went Wrong: $error"),
          );
        },
        loading: () => Center(child: CircularProgressIndicator.adaptive()),
      ),
    );
  }
}
