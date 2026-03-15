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
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _itemName = TextEditingController();
  final TextEditingController _itemType = TextEditingController();
  final TextEditingController _purchaseDate = TextEditingController();
  final TextEditingController _amountInHand = TextEditingController();
  final TextEditingController _description = TextEditingController();

  @override
  void dispose() {
    _itemName.dispose();
    _itemType.dispose();
    _purchaseDate.dispose();
    _amountInHand.dispose();
    _description.dispose();
    super.dispose();
  }

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
                key: _formKey,
                child: Column(
                  spacing: 20,
                  children: [
                    styledForm(
                      "Item name",
                      TextFormField(
                        controller: _itemName,
                        style: TextStyle(fontSize: 16),
                        keyboardType: TextInputType.text,
                        onTapOutside: (event) {
                          FocusScope.of(context).unfocus();
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "fill in the name";
                          }
                          return null;
                        },
                      ),
                    ),

                    styledForm(
                      "Item type",
                      TextFormField(
                        controller: _itemType,
                        style: TextStyle(fontSize: 16),
                        keyboardType: TextInputType.text,
                        onTapOutside: (event) {
                          FocusScope.of(context).unfocus();
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Select the type";
                          }
                          return null;
                        },
                      ),
                    ),

                    styledForm(
                      "Purchase date",
                      TextFormField(
                        controller: _purchaseDate,
                        style: TextStyle(fontSize: 16),
                        keyboardType: TextInputType.datetime,
                        onTapOutside: (event) {
                          FocusScope.of(context).unfocus();
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Select the date";
                          }
                          return null;
                        },
                      ),
                    ),

                    styledForm(
                      "Amount in hand",
                      TextFormField(
                        controller: _amountInHand,
                        style: TextStyle(fontSize: 16),
                        keyboardType: TextInputType.number,
                        onTapOutside: (event) {
                          FocusScope.of(context).unfocus();
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter amount";
                          }
                          return null;
                        },
                      ),
                    ),

                    styledForm(
                      "Description",
                      TextFormField(
                        controller: _description,
                        style: TextStyle(fontSize: 16),
                        keyboardType: TextInputType.text,
                        maxLines: 4,
                        onTapOutside: (event) {
                          FocusScope.of(context).unfocus();
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Add description";
                          }
                          return null;
                        },
                      ),
                    ),

                    StyledFilledButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // we will show the snack bar here
                        }
                      },
                      child: Text(
                        "Create your budget",
                        style: TextStyle(fontSize: 16),
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
