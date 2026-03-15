import 'package:app/shared/styled_title.dart';
import 'package:app/widgets/styled_filled_button.dart';
import 'package:app/widgets/styled_form.dart';
import 'package:flutter/material.dart';

class BudgetPage extends StatefulWidget {
  const BudgetPage({super.key});

  @override
  State<BudgetPage> createState() => _BudgetPageState();
}

class _BudgetPageState extends State<BudgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyledTitle(text: "Your budget")),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Form(
                child: Column(
                  spacing: 20,
                  children: [
                    styledForm(
                      "Item name",
                      TextFormField(
                        style: TextStyle(fontSize: 16),
                        keyboardType: TextInputType.text,
                        onTapOutside: (event) {
                          FocusScope.of(context).unfocus();
                        },
                      ),
                    ),

                    styledForm(
                      "Item type",
                      TextFormField(
                        style: TextStyle(fontSize: 16),
                        keyboardType: TextInputType.text,
                        onTapOutside: (event) {
                          FocusScope.of(context).unfocus();
                        },
                      ),
                    ),

                    styledForm(
                      "Purchase date",
                      TextFormField(
                        style: TextStyle(fontSize: 16),
                        keyboardType: TextInputType.datetime,
                        onTapOutside: (event) {
                          FocusScope.of(context).unfocus();
                        },
                      ),
                    ),

                    styledForm(
                      "Amount in hand",
                      TextFormField(
                        style: TextStyle(fontSize: 16),
                        keyboardType: TextInputType.number,
                        onTapOutside: (event) {
                          FocusScope.of(context).unfocus();
                        },
                      ),
                    ),

                    styledForm(
                      "Description",
                      TextFormField(
                        style: TextStyle(fontSize: 16),
                        keyboardType: TextInputType.text,
                        maxLines: 4,
                        onTapOutside: (event) {
                          FocusScope.of(context).unfocus();
                        },
                      ),
                    ),

                    StyledFilledButton(
                      onPressed: () {},
                      child: Text(
                        "Create your budget",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
