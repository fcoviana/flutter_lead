import 'package:flutter/material.dart';

import 'text_label.dart';
import '../../core/core.dart';

class ButtonBase extends StatelessWidget {
  double width;
  double height;
  String label;
  Color backgroundColor;
  String image;
  VoidCallback onPressed;

  ButtonBase(
      {this.width = 200,
      this.height = 40,
      this.backgroundColor = Colors.purple,
      this.image = "",
      required this.label,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: _buildContainer(),
    );
  }

  _buildContainer() {
    return Container(
      color: backgroundColor,
      width: width,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Wrap(children: [
            TextLabel.build(
                name: label,
                size: 16,
                color: AppColors.grayscaleOffWhite,
                fontWeight: FontWeight.w500),
            image != ""
                ? Wrap(
                    children: [
                      SizedBox(width: 10),
                      Image.asset(image, height: 25),
                    ],
                  )
                : SizedBox()
          ])
        ],
      ),
    );
  }
}
