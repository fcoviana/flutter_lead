import 'package:flutter/material.dart';
import 'package:tareafas_app/controllers/tarefa_controller.dart';

import '/pages/form/widgets/appbar/app_bar_widget.dart';
import '/shared/widgets/widgets.dart';
import '/models/tarefa.dart';

class FormPage extends StatelessWidget {
  TextEditingController tituloController = TextEditingController();
  TextEditingController descricaoController = TextEditingController();
  TarefaController tarefaController;
  Tarefa? tarefa;

  String label;

  FormPage({required this.tarefaController, this.tarefa, required this.label});

  @override
  Widget build(BuildContext context) {
    tituloController.text = tarefa != null ? tarefa!.titulo : '';
    descricaoController.text = tarefa != null ? tarefa!.descricao : '';

    return Scaffold(
      appBar: AppBarWidget(titulo: label),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            children: [
              InputWidget(label: 'Titulo', controller: tituloController),
              SizedBox(height: 32),
              InputWidget(label: 'Descrição', controller: descricaoController)
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ButtonBase(
          height: 56,
          rounded: true,
          label: label,
          onPressed: () {
            onSubmit(context);
          },
        ),
      ),
    );
  }

  onSubmit(context) {
    if (tarefa == null) {
      tarefaController.create(tituloController.text, descricaoController.text);
    } else {
      var tarefaToEdit = Tarefa(
          id: tarefa!.id,
          titulo: tituloController.text,
          descricao: descricaoController.text);

      tarefaController.tarefa = tarefaToEdit;
      tarefaController.editar();
    }
    Navigator.pop(context);
  }
}
