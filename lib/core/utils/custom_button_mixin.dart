import 'package:flutter/material.dart';

mixin CustomButtonMixin {
  Widget buildElevatedButton({
    required String text,
    required VoidCallback onPressed,
    Color backgroundColor = Colors.blue,
    Color textColor = Colors.white,
    double fontSize = 16,
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    double borderRadius = 20.0,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          color: textColor,
        ),
      ),
    );
  }
}
