
class Calculadora {
  static soma(List<double> numbers) {
    return numbers.reduce((value, element) => value + element);
  }

  static subtrai(List<double> numbers) {
    return numbers.reduce((value, element) => value - element);
  }

  static multiplica(List<double> numbers) {
    return numbers.reduce((value, element) => value * element);
  }

   static divide(List<double> numbers) {
    return numbers.reduce((value, element) => value / element);
  }
}

void main() {
  List<double> numbers = [3.0, 1.0, 2.0];

  print('Soma: ${Calculadora.soma(numbers)}');
  print('Subtrai: ${Calculadora.subtrai(numbers)}');
  print('Multiplica: ${Calculadora.multiplica(numbers)}');
  print('Divide: ${Calculadora.divide(numbers)}');
}