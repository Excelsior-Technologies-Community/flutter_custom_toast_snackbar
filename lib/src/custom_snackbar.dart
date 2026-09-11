import 'package:flutter/material.dart';

enum SnackBarShape {
  rounded,
  pill,
  square,
}

class CustomSnackBar {
  static void show(
      BuildContext context, {
        required String message,
        IconData? icon,
        Color backgroundColor = Colors.black87,
        Color textColor = Colors.white,
        Color? iconColor,
        SnackBarShape shape = SnackBarShape.rounded,
        double borderRadius = 12,
        double iconSize = 22,
        double fontSize = 14,
        Duration duration = const Duration(seconds: 3),
        EdgeInsetsGeometry padding = const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        EdgeInsetsGeometry margin = const EdgeInsets.all(16),
      }) {
    final snackBar = SnackBar(
      content: Row(
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              color: iconColor ?? textColor,
              size: iconSize,
            ),
            const SizedBox(width: 10),
          ],
          Expanded(
            child: Text(
              message,
              style: TextStyle(
                color: textColor,
                fontSize: fontSize,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: backgroundColor,
      duration: duration,
      behavior: SnackBarBehavior.floating,
      margin: margin,
      padding: padding,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          getBorderRadius(shape, borderRadius),
        ),
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static double getBorderRadius(
      SnackBarShape shape,
      double borderRadius,
      ) {
    switch (shape) {
      case SnackBarShape.rounded:
        return borderRadius;

      case SnackBarShape.pill:
        return 100;

      case SnackBarShape.square:
        return 0;
    }
  }
}