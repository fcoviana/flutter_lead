import 'package:flutter/material.dart';

class BaseButtonWidget extends StatelessWidget {
  String label;
  Color textColor;
  Color backgroundColor;
  VoidCallback callback;

  BaseButtonWidget(
      {required this.label,
      required this.textColor,
      required this.backgroundColor,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: backgroundColor),
        child: Text(
          label,
          style: TextStyle(color: textColor, fontSize: 35),
        ),
      ),
    );
  }
}
