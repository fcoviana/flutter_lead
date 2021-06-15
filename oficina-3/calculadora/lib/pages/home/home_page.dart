import 'package:calculadora/model/calculator.dart';
import 'package:calculadora/pages/home/widgets/zero_button_widget.dart';
import 'package:calculadora/shared/utils/utils.dart';
import 'package:calculadora/shared/widgets/base_button_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Calculator calculator = Calculator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.bottomRight,
              height: 170,
              width: double.infinity,
              child: Text(
                "${calculator.value}",
                style: TextStyle(color: Colors.white, fontSize: 50),
              ),
            ),
            _buildWrap(children: _buildRowOne()),
            _buildWrap(children: _buildRowTwo()),
            _buildWrap(children: _buildRowThree()),
            _buildWrap(children: _buildRowFour()),
            _buildWrap(children: _buildRowFive()),
          ],
        ),
      ),
    );
  }

  _buildWrap({children}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      ),
    );
  }

  _buildRowOne() {
    return [
      BaseButtonWidget(
        callback: () => setState(() => calculator.value = "0"),
        label: "C",
        textColor: Colors.black,
        backgroundColor: Color(0xFFa5a5a5),
      ),
      BaseButtonWidget(
        callback: () => setState(
            () => calculator.value = Util.addLastValue("0", calculator.value)),
        label: "-/+",
        textColor: Colors.black,
        backgroundColor: Color(0xFFa5a5a5),
      ),
      BaseButtonWidget(
        callback: () => setState(
            () => calculator.value = Util.addLastValue("0", calculator.value)),
        label: "%",
        textColor: Colors.black,
        backgroundColor: Color(0xFFa5a5a5),
      ),
      BaseButtonWidget(
        callback: () => setState(() => calculator.setOperation("/")),
        label: "÷",
        textColor: Colors.white,
        backgroundColor: Colors.orangeAccent,
      )
    ];
  }

  _buildRowTwo() {
    return [
      BaseButtonWidget(
        callback: () => setState(
            () => calculator.value = Util.addLastValue("7", calculator.value)),
        label: "7",
        textColor: Colors.white,
        backgroundColor: Color(0xFF333333),
      ),
      BaseButtonWidget(
        callback: () => setState(
            () => calculator.value = Util.addLastValue("8", calculator.value)),
        label: "8",
        textColor: Colors.white,
        backgroundColor: Color(0xFF333333),
      ),
      BaseButtonWidget(
        callback: () => setState(
            () => calculator.value = Util.addLastValue("9", calculator.value)),
        label: "9",
        textColor: Colors.white,
        backgroundColor: Color(0xFF333333),
      ),
      BaseButtonWidget(
        callback: () => setState(() => calculator.setOperation("x")),
        label: "x",
        textColor: Colors.white,
        backgroundColor: Colors.orangeAccent,
      )
    ];
  }

  _buildRowThree() {
    return [
      BaseButtonWidget(
        callback: () => setState(
            () => calculator.value = Util.addLastValue("4", calculator.value)),
        label: "4",
        textColor: Colors.white,
        backgroundColor: Color(0xFF333333),
      ),
      BaseButtonWidget(
        callback: () => setState(
            () => calculator.value = Util.addLastValue("5", calculator.value)),
        label: "5",
        textColor: Colors.white,
        backgroundColor: Color(0xFF333333),
      ),
      BaseButtonWidget(
        callback: () => setState(
            () => calculator.value = Util.addLastValue("6", calculator.value)),
        label: "6",
        textColor: Colors.white,
        backgroundColor: Color(0xFF333333),
      ),
      BaseButtonWidget(
        callback: () => setState(() => calculator.setOperation("-")),
        label: "-",
        textColor: Colors.white,
        backgroundColor: Colors.orangeAccent,
      )
    ];
  }

  _buildRowFour() {
    return [
      BaseButtonWidget(
        callback: () => setState(
            () => calculator.value = Util.addLastValue("1", calculator.value)),
        label: "1",
        textColor: Colors.white,
        backgroundColor: Color(0xFF333333),
      ),
      BaseButtonWidget(
        callback: () => setState(
            () => calculator.value = Util.addLastValue("2", calculator.value)),
        label: "2",
        textColor: Colors.white,
        backgroundColor: Color(0xFF333333),
      ),
      BaseButtonWidget(
        callback: () => setState(
            () => calculator.value = Util.addLastValue("3", calculator.value)),
        label: "3",
        textColor: Colors.white,
        backgroundColor: Color(0xFF333333),
      ),
      BaseButtonWidget(
        callback: () => setState(() => calculator.setOperation("+")),
        label: "+",
        textColor: Colors.white,
        backgroundColor: Colors.orangeAccent,
      )
    ];
  }

  _buildRowFive() {
    return [
      ZeroButtonWidget(
        callback: () => setState(
            () => calculator.value = Util.addLastValue("0", calculator.value)),
      ),
      BaseButtonWidget(
        callback: () => setState(
            () => calculator.value = Util.addLastValue("0", calculator.value)),
        label: ",",
        textColor: Colors.white,
        backgroundColor: Color(0xFF333333),
      ),
      BaseButtonWidget(
        callback: () =>
            setState(() => calculator.value = calculator.calculate()),
        label: "=",
        textColor: Colors.white,
        backgroundColor: Colors.orangeAccent,
      )
    ];
  }
}
