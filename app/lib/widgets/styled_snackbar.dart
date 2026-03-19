import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

void styledSnackBar(BuildContext context, String message, Color iconColor) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      showCloseIcon: true,
      dismissDirection: DismissDirection.startToEnd,
      elevation: 0.0,
      duration: Duration(seconds: 3),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: Row(
        spacing: 5,
        children: [
          Icon(TablerIcons.alert_circle, color: iconColor, size: 30),
          Text(message, style: TextStyle()),
        ],
      ),
    ),
  );
}
