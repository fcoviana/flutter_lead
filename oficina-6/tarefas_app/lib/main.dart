import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/core.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: AppColors.grayscaleTitle,
    statusBarColor:  AppColors.primary,
  ));
  runApp(AppWidget());
}
