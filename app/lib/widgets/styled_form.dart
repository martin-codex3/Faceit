import 'package:app/shared/styled_body.dart';
import 'package:flutter/material.dart';

Widget styledForm(String text, Widget form) {
  return Column(
    spacing: 5,
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      StyledBody(text: text),
      form,
    ],
  );
}
