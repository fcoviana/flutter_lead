import 'package:flutter/material.dart';

class ZeroButtonWidget extends StatelessWidget {
  VoidCallback callback;

  ZeroButtonWidget({required this.callback});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        alignment: Alignment.centerLeft,
        height: 60,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color(0xFF333333),
        ),
        child: Text(
          "0",
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
      ),
    );
  }
}
