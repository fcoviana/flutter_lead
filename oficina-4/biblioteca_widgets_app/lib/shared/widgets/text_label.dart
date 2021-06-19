import 'package:biblioteca_widgets_app/core/app_colors.dart';
import 'package:flutter/material.dart';

class TextLabel {
  static Widget build(
      {String? name,
      double? size,
      Color? color,
      TextAlign? textAlign,
      FontWeight? fontWeight}) {
    return Container(
      child: Text(
        name ?? "",
        textAlign: textAlign ?? TextAlign.center,
        style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: size,
            color: color ?? AppColors.grayscaleTitle,
            fontFamily: 'Poppins',
            fontWeight: fontWeight ?? FontWeight.w400),
      ),
    );
  }
}
