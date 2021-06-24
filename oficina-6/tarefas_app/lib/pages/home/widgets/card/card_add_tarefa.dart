import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:tareafas_app/controllers/tarefa_controller.dart';

import '/shared/widgets/text_label.dart';
import '../botao/botao_add_tarefa.dart';
import '/core/app_colors.dart';
import '/pages/form/form_page.dart';

class CardAddTarefa extends StatelessWidget {
  TarefaController tarefaController;
  CardAddTarefa({required this.tarefaController});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FormPage(
                        tarefaController: tarefaController,
                        label: 'Adicionar',
                      )));
        },
        child: Container(
          height: 146,
          width: 378,
          color: Colors.white,
          child: DottedBorder(
            dashPattern: [6, 8],
            radius: Radius.circular(12),
            borderType: BorderType.RRect,
            color: AppColors.primary,
            strokeWidth: 2.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: BotaoAddTarefa(),
                ),
                SizedBox(height: 10),
                TextLabel.build(
                    name: 'Cadastrar uma nova tarefa',
                    color: AppColors.primary,
                    fontWeight: FontWeight.w500)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
