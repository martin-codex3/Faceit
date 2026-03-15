import 'package:flutter/material.dart';

class StyledBody extends StatelessWidget {
  final String text;
  const StyledBody({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.bodyMedium);
  }
}
