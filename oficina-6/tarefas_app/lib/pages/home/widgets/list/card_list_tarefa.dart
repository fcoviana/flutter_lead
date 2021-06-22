import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '/controllers/tarefa_controller.dart';
import '/pages/home/widgets/card/card_tarefa_widget.dart';

class CardListTarefa extends StatelessWidget {
  TarefaController tarefaController;
  CardListTarefa({ required this.tarefaController});

  @override
  Widget build(BuildContext context) {
    return Observer(
          builder: (_) => ListView.builder(
          itemCount: tarefaController.tarefas.length,
          itemBuilder: (_, i) => CardTarefa(
                titulo: tarefaController.tarefas[i].titulo,
                descricao: tarefaController.tarefas[i].descricao,
              )),
    );
  }
}
