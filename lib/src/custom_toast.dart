import 'package:flutter/material.dart';

enum ToastShape {
  rounded,
  pill,
  square,
}

class CustomToast {
  static void show(
      BuildContext context, {
        required String message,
        IconData? icon,
        Color backgroundColor = Colors.black87,
        Color textColor = Colors.white,
        Color? iconColor,
        ToastShape shape = ToastShape.rounded,
        double borderRadius = 12,
        double iconSize = 22,
        double fontSize = 14,
        Duration duration = const Duration(seconds: 2),
        EdgeInsetsGeometry padding = const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
      }) {
    final overlay = Overlay.of(context);

    late OverlayEntry overlayEntry;

    overlayEntry = OverlayEntry(
      builder: (context) {
        return Positioned(
          bottom: 80,
          left: 20,
          right: 20,
          child: Material(
            color: Colors.transparent,
            child: Center(
              child: Container(
                padding: padding,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(
                    getBorderRadius(shape, borderRadius),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (icon != null) ...[
                      Icon(
                        icon,
                        color: iconColor ?? textColor,
                        size: iconSize,
                      ),
                      const SizedBox(width: 10),
                    ],
                    Flexible(
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
              ),
            ),
          ),
        );
      },
    );

    overlay.insert(overlayEntry);

    Future.delayed(duration, () {
      if (overlayEntry.mounted) {
        overlayEntry.remove();
      }
    });
  }

  static double getBorderRadius(
      ToastShape shape,
      double borderRadius,
      ) {
    switch (shape) {
      case ToastShape.rounded:
        return borderRadius;

      case ToastShape.pill:
        return 100;

      case ToastShape.square:
        return 0;
    }
  }
}