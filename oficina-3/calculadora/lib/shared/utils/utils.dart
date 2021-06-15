class Util {
  static String addLastValue(String newValue, String value) {
    if (value == "0" && newValue == "0") {
      return "0";
    } else if (value == "0" && newValue != "0") {
      return newValue;
    } else {
      var list = _turnInList(value);
      list.add(newValue);

      return list.join();
    }
  }

  static List<String> _turnInList(String value) {
    String auxValue = value;
    List<String> list = auxValue.split("");

    return list;
  }
}
