import 'package:flutter/material.dart';

import '/pages/home/widgets/card/card_tarefa_widget.dart';

class CardListTarefa extends StatelessWidget {
  CardListTarefa();

  @override
  Widget build(BuildContext context) {
    return ListView(
        
        children: [CardTarefa(), CardTarefa(), CardTarefa(), CardTarefa()]);
  }
}
