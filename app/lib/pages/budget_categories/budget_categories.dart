import 'package:app/shared/styled_title.dart';
import 'package:flutter/material.dart';

class BudgetCategories extends StatefulWidget {
  const BudgetCategories({super.key});

  @override
  State<BudgetCategories> createState() => _BudgetCategoriesState();
}

class _BudgetCategoriesState extends State<BudgetCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyledTitle(text: "Categories"), centerTitle: true),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(children: []),
        ),
      ),
    );
  }
}
