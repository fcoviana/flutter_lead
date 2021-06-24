import 'package:flutter/material.dart';

import '/controllers/tarefa_controller.dart';
import '/core/app_colors.dart';
import '/core/app_images.dart';
import '/models/tarefa.dart';
import '/pages/form/form_page.dart';
import '/shared/widgets/text_label.dart';

class CardTarefa extends StatelessWidget {
  TarefaController tarefaController;
  Tarefa tarefa;

  CardTarefa({required this.tarefa, required this.tarefaController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        height: 180,
        width: 378,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.grayscaleGhostBorder),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                    backgroundColor: AppColors.blue.withOpacity(0.2),
                    child: TextLabel.build(
                        name: "T",
                        size: 16,
                        color: AppColors.blue,
                        fontWeight: FontWeight.w600)),
                SizedBox(width: 10),
                TextLabel.build(
                    name: "${tarefa.titulo}",
                    size: 14,
                    color: AppColors.grayscaleTitle,
                    fontWeight: FontWeight.w600)
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextLabel.build(
                      name: "${tarefa.descricao}",
                      size: 14,
                      textAlign: TextAlign.justify,
                      color: AppColors.grayscaleTitle,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FormPage(
                                  tarefaController: tarefaController,
                                  tarefa: tarefa,
                                  label: 'Atualizar',
                                )));
                  },
                  child: Image.asset(AppImages.edit, width: 25, height: 25),
                ),
                SizedBox(width: 25),
                InkWell(
                  onTap: () => {
                    this.tarefaController.tarefa = this.tarefa,
                    this.tarefaController.remove()
                  },
                  child: Image.asset(AppImages.delte, width: 25, height: 25),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
