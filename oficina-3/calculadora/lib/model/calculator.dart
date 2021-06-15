class Calculator {
  String value = "0";
  String operation = "";
  String keepValue = "";

  String calculate() {
    var result;
    switch (operation) {
      case "+":
        result = int.parse(keepValue) + int.parse(value);
        return result.toString();
      case "-":
        result = int.parse(keepValue) - int.parse(value);
        return result.toString();
      case "/":
        result = int.parse(keepValue) + int.parse(value);
        return result.toString();
      case "x":
        result = int.parse(keepValue) * int.parse(value);
        return result.toString();
      default:
        return "0";
    }
  }

  void setOperation(operation) {
    this.operation = operation;
    this.keepValue = this.value;
    this.value = "0";
  }
}
