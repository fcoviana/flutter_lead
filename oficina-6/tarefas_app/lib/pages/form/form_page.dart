import 'package:flutter/material.dart';
import 'package:tareafas_app/core/core.dart';

import '/pages/form/widgets/appbar/app_bar_widget.dart';
import '/shared/widgets/widgets.dart';

class FormPage extends StatelessWidget {
  FormPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            children: [
              InputWidget(label: 'Titulo'),
              SizedBox(height: 32),
              InputWidget(label: 'Descrição')
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
          onPressed: () {},
        ),
      ),
    );
  }
}
