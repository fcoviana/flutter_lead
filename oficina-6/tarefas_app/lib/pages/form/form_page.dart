import 'package:flutter/material.dart';
import 'package:tareafas_app/controllers/tarefa_controller.dart';

import '/pages/form/widgets/appbar/app_bar_widget.dart';
import '/shared/widgets/widgets.dart';

class FormPage extends StatelessWidget {
  TextEditingController tituloController = TextEditingController();
  TextEditingController descricaoController = TextEditingController();
  TarefaController tarefaController;

  FormPage({required this.tarefaController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
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
          label: 'Salvar',
          onPressed: () {
            tarefaController.create(
                tituloController.text, descricaoController.text);
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
