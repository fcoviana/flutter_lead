import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

import '/shared/widgets/text_label.dart';
import '../botao/botao_add_tarefa.dart';
import '/core/app_colors.dart';

class CardAddTarefa extends StatelessWidget {
  CardAddTarefa();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () => print('CLICK'),
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
