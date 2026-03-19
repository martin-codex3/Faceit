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
          physics: BouncingScrollPhysics(),
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (data[index].title == "Food & Groceries")
                    Text(data[index].title),

                  if (data[index].title == "Transport") Text(data[index].title),

                  if (data[index].title == "Housing & Utilities")
                    Text(data[index].title),

                  if (data[index].title == "Health & Wellness")
                    Text(data[index].title),

                  if (data[index].title == "Shopping") Text(data[index].title),

                  if (data[index].title == "Entertainment")
                    Text(data[index].title),

                  if (data[index].title == "Education") Text(data[index].title),

                  if (data[index].title == "Savings & Financial")
                    Text(data[index].title),

                  Wrap(
                    spacing: 8,
                    children: data[index].categories.map((category) {
                      return FilterChip(
                        label: Text(category),
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
