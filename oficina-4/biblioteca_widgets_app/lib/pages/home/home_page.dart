import 'package:flutter/material.dart';

import '/core/core.dart';
import '/shared/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15),
            TextLabel.build(
              name: "Butões",
              size: 22,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 10),
                ButtonBase(
                  onPressed: () {},
                  label: 'Entrar',
                  height: 40,
                  width: 100,
                  backgroundColor: AppColors.primary,
                ),
                SizedBox(width: 10),
                ButtonBase(
                    onPressed: () {},
                    label: 'Next',
                    width: 100,
                    backgroundColor: AppColors.grayscaleDetails,
                    image: AppImages.arrowRight),
                SizedBox(width: 10),
                ButtonBase(
                    onPressed: () {},
                    label: 'Back',
                    width: 100,
                    backgroundColor: AppColors.secondary,
                    image: AppImages.arrowLeft),
              ],
            ),
            SizedBox(height: 15),
            TextLabel.build(
              name: "Textos",
              size: 22,
              color: AppColors.grayscaleTitle,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextLabel.build(
                  name: "Font w100 e size 10",
                  size: 10,
                  fontWeight: FontWeight.w100,
                ),
                TextLabel.build(
                  name: "Font w200 e size 12",
                  size: 12,
                  fontWeight: FontWeight.w200,
                ),
                TextLabel.build(
                  name: "Font w300 e size 14",
                  size: 14,
                  fontWeight: FontWeight.w300,
                ),
                TextLabel.build(
                  name: "Font w400 e size 16",
                  size: 16,
                  fontWeight: FontWeight.w400,
                ),
                TextLabel.build(
                  name: "Font w500 e size 18",
                  size: 18,
                  fontWeight: FontWeight.w500,
                ),
                TextLabel.build(
                  name: "Font w600 e size 20",
                  size: 20,
                  fontWeight: FontWeight.w600,
                ),
                TextLabel.build(
                  name: "Font w700 e size 22",
                  size: 22,
                  fontWeight: FontWeight.w700,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
