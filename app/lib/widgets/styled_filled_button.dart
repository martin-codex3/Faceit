import 'package:app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class StyledFilledButton extends StatelessWidget {
  final void Function() onPressed;
  final Widget child;
  const StyledFilledButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.primaryGreen,
          foregroundColor: Colors.black,
          padding: const EdgeInsets.all(10),
        ),
        child: child,
      ),
    );
  }
}
