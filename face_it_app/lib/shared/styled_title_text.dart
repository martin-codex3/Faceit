import 'package:flutter/material.dart';

class StyledTitleText extends StatelessWidget {
  final String text;
  const StyledTitleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.titleMedium);
  }
}
