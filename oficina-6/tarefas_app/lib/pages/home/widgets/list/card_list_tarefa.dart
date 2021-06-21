import 'package:flutter/material.dart';

import '/pages/home/widgets/card/card_tarefa_widget.dart';

class CardListTarefa extends StatelessWidget {
  CardListTarefa();

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: [CardTarefa(), CardTarefa(), CardTarefa(), CardTarefa()]);
  }
}
