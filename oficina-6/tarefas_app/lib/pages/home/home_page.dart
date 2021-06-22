import 'package:flutter/material.dart';

import '/pages/home/widgets/appbar/app_bar_widget.dart';
import 'widgets/card/card_add_tarefa.dart';
import '/pages/home/widgets/list/card_list_tarefa.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 22),
            CardAddTarefa(),
            SizedBox(height: 16),
            Expanded(child: CardListTarefa())
          ],
        ),
      ),
    );
  }
}
