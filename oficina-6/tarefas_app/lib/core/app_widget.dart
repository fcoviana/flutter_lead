import 'package:flutter/material.dart';

import '/core/app_colors.dart';
import '../pages/home/home_page.dart';
import '/controllers/tarefa_controller.dart';

class AppWidget extends StatelessWidget {
  TarefaController tarefaController = TarefaController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Tarefas CRUD",
        theme: _buildTheme(context),
        home: HomePage(
          tarefaController: tarefaController,
        ));
  }

  ThemeData _buildTheme(BuildContext context) {
    return ThemeData(
        primaryColor: AppColors.primary,
        accentIconTheme: Theme.of(context)
            .accentIconTheme
            .copyWith(color: AppColors.grayscaleOffWhite),
        primaryIconTheme: Theme.of(context)
            .primaryIconTheme
            .copyWith(color: AppColors.grayscaleOffWhite),
        primaryTextTheme: Theme.of(context)
            .primaryTextTheme
            .apply(bodyColor: AppColors.grayscaleOffWhite),
        backgroundColor: AppColors.grayscaleBackground,
        accentColor: AppColors.secondary,
        hintColor: AppColors.secondary,
        errorColor: AppColors.danger,
        fontFamily: 'Poppins');
  }
}
