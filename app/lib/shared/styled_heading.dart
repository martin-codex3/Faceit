import 'package:flutter/material.dart';

class StyledHeading extends StatelessWidget {
  final String text;
  const StyledHeading({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headlineMedium);
  }
}
