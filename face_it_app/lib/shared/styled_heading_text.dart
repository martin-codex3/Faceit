import 'package:flutter/material.dart';

class StyledHeadingText extends StatelessWidget {
  final String text;
  const StyledHeadingText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineMedium);
  }
}
