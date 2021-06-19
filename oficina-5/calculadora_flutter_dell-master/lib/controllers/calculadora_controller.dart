import 'package:mobx/mobx.dart';

part 'calculadora_controller.g.dart';

class CalculadoraController = CalculadoraControllerBase
    with _$CalculadoraController;

abstract class CalculadoraControllerBase with Store {
  @observable
  int primeiroNumero;
  @observable
  int segundoNumero;
  @observable
  String operacaoEscolhida;
  @observable
  double resultado;

  @action
  void onClickBotao() {
    print(operacaoEscolhida);
    if (operacaoEscolhida == '+') {
      resultado = (primeiroNumero + segundoNumero).toDouble();
    } else if (operacaoEscolhida == '-') {
      resultado = (primeiroNumero - segundoNumero).toDouble();
    } else if (operacaoEscolhida == '*') {
      resultado = (primeiroNumero * segundoNumero).toDouble();
    } else if (operacaoEscolhida == '/') {
      resultado = (primeiroNumero / segundoNumero).toDouble();
    } else if (operacaoEscolhida == '%') {
      resultado = (primeiroNumero % segundoNumero).toDouble();
    }
  }

  @action
  void onClickBotaoZerar() {
    print(resultado);

    primeiroNumero = null;
    segundoNumero = null;
    operacaoEscolhida = null;
    resultado = null;
  }

  @action
  void onPrimeiroNumeroEscolhido(int numero) {
    print('NUMERO 1 ESCOLHIDO: $numero');
    primeiroNumero = numero;
  }

  @action
  void onSegundoNumeroEscolhido(int numero) {
    print('NUMERO 2 ESCOLHIDO: $numero');
    segundoNumero = numero;
  }

  @action
  void onOperacaoEscolhida(String operacao) {
    operacaoEscolhida = operacao;
  }
}
