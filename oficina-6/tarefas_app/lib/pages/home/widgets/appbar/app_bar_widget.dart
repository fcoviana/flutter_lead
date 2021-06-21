import 'package:flutter/material.dart';
import 'package:tareafas_app/shared/widgets/text_label.dart';
import '/core/app_colors.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
            preferredSize: Size.fromHeight(150),
            child: Container(
              height: 150,
              child: Stack(
                children: [
                  Container(
                      color: AppColors.primary,
                      width: double.maxFinite,
                      child: _buildRow()),
                ],
              ),
            ));
}

Container _buildRow() {
  return Container(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextLabel.build(
          name: "MINHAS TAREFAS",
          fontWeight: FontWeight.w700,
          size: 30,
          color: AppColors.grayscaleOffWhite)
    ],
  ));
}
