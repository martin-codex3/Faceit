import 'package:app/controllers/budget_controller/budget_categories_controller.dart';
import 'package:app/shared/styled_body.dart';
import 'package:app/shared/styled_title.dart';
import 'package:app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

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
                    Row(
                      spacing: 5,
                      children: [
                        Icon(
                          TablerIcons.burger,
                          color: AppColors.primaryWhite,
                          size: 30,
                        ),
                        Text(data[index].title),
                      ],
                    ),

                  if (data[index].title == "Transport")
                    Row(
                      spacing: 5,
                      children: [
                        Icon(
                          TablerIcons.car,
                          color: AppColors.primaryWhite,
                          size: 30,
                        ),
                        Text(data[index].title),
                      ],
                    ),

                  if (data[index].title == "Housing & Utilities")
                    Row(
                      spacing: 5,
                      children: [
                        Icon(
                          TablerIcons.solar_electricity,
                          color: AppColors.primaryWhite,
                          size: 30,
                        ),
                        Text(data[index].title),
                      ],
                    ),

                  if (data[index].title == "Health & Wellness")
                    Row(
                      spacing: 5,
                      children: [
                        Icon(
                          TablerIcons.report_medical,
                          color: AppColors.primaryWhite,
                          size: 30,
                        ),
                        Text(data[index].title),
                      ],
                    ),

                  if (data[index].title == "Shopping")
                    Row(
                      spacing: 5,
                      children: [
                        Icon(
                          TablerIcons.shopping_bag,
                          color: AppColors.primaryWhite,
                          size: 30,
                        ),
                        Text(data[index].title),
                      ],
                    ),

                  if (data[index].title == "Entertainment")
                    Row(
                      spacing: 5,
                      children: [
                        Icon(
                          TablerIcons.device_tv_old,
                          color: AppColors.primaryWhite,
                          size: 30,
                        ),
                        Text(data[index].title),
                      ],
                    ),

                  if (data[index].title == "Education")
                    Row(
                      spacing: 5,
                      children: [
                        Icon(
                          TablerIcons.book,
                          color: AppColors.primaryWhite,
                          size: 30,
                        ),
                        Text(data[index].title),
                      ],
                    ),

                  if (data[index].title == "Savings & Financial")
                    Row(
                      spacing: 5,
                      children: [
                        Icon(
                          TablerIcons.moneybag,
                          color: AppColors.primaryWhite,
                          size: 30,
                        ),
                        Text(data[index].title),
                      ],
                    ),

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
