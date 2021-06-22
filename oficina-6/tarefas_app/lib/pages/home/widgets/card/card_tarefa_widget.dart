import 'package:flutter/material.dart';
import 'package:tareafas_app/core/app_colors.dart';
import 'package:tareafas_app/core/app_images.dart';
import 'package:tareafas_app/shared/widgets/text_label.dart';

class CardTarefa extends StatelessWidget {
  String titulo;
  String descricao;
  
  CardTarefa({ required this.titulo, required this.descricao});

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
                    name: "$titulo",
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
                      name:
                          "$descricao",
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
                  onTap: () => print('EDITA'),
                  child: Image.asset(AppImages.edit, width: 25, height: 25),
                ),
                SizedBox(width: 25),
                InkWell(
                  onTap: () => print('DELETA'),
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
