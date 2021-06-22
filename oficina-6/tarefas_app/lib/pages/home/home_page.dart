import 'package:flutter/material.dart';

import '/pages/home/widgets/appbar/app_bar_widget.dart';
import 'widgets/card/card_add_tarefa.dart';
import '/pages/home/widgets/list/card_list_tarefa.dart';
import '/controllers/tarefa_controller.dart';

class HomePage extends StatelessWidget {
  TarefaController tarefaController;

  HomePage({required this.tarefaController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 22),
            CardAddTarefa(
              tarefaController: tarefaController,
            ),
            SizedBox(height: 16),
            Expanded(child: CardListTarefa(tarefaController: tarefaController))
          ],
        ),
      ),
    );
  }
}
