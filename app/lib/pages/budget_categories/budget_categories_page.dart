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
    return Scaffold(
      appBar: AppBar(title: StyledTitle(text: "Budget Categories")),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      ),
    );
  }
}
