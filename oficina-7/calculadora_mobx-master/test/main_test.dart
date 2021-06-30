import 'package:flutter_test/flutter_test.dart';

import 'package:calculadora_mobx/main.dart';


void main() {

   initTest(WidgetTester tester) async {
     await tester.pumpWidget(Calculadora());
  }
  testWidgets('Deve existir os Texts (Operação e Resultado)', (WidgetTester tester) async {
   
    await initTest(tester);

    expect(find.text('Operação: '), findsOneWidget);
    expect(find.text('Resultado: '), findsOneWidget);

  });

  testWidgets('Deve existir o widget BotaoZerar', (WidgetTester tester) async {
   
    await initTest(tester);

    final button = tester.widget<BotaoZerar>(find.byType(BotaoZerar));
    expect(button, isNotNull);

  });

  testWidgets('Deve existir o widget BotaoCalcular', (WidgetTester tester) async {
   
    await initTest(tester);

    final button = tester.widget<BotaoCalcular>(find.byType(BotaoCalcular));
    expect(button, isNotNull);

  });

  testWidgets('Deve existir o widget Operacoes', (WidgetTester tester) async {
   
    await initTest(tester);

    final button = tester.widget<Operacoes>(find.byType(Operacoes));
    expect(button, isNotNull);

    expect(find.text('+'), findsOneWidget);
    expect(find.text('-'), findsOneWidget);
    expect(find.text('*'), findsOneWidget);
    expect(find.text('%'), findsOneWidget);
  });

}
