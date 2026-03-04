import 'package:flutter/material.dart';

void snackBarWidget(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: Duration(seconds: 5),
      content: Text(message, style: TextStyle(fontSize: 16)),
    ),
  );
}
