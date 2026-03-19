import 'package:flutter/material.dart';

class StyledDisplay extends StatelessWidget {
  final String text;
  const StyledDisplay({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.displayMedium);
  }
}
