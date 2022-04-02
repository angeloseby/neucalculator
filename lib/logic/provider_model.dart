import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

// This class serves as a model of data we want access with in the app
// The state of this app can be managed using this class
class ProviderModel with ChangeNotifier {
  //This String variable is used to display the values in display area
  String expression = "0";
  String exp1 = "0", exp2 = "0";
  Parser p = Parser();
  ContextModel cm = ContextModel();

  //This function will update the expression according to the clicks
  void onClick({required String val}) {
    if (expression == "0" || expression == "0.0") {
      expression = val;
    } else {
      switch (val) {
        case "C":
          expression = "0";
          break;
        case "CE":
          expression = expression.substring(0, expression.length - 1);
          break;
        case "=":
          expression = expression.replaceAll("×", "*").replaceAll("÷", "/");
          Expression exp = p.parse(expression);
          expression = exp.evaluate(EvaluationType.REAL, cm).toString();
          break;

        default:
          expression = expression + val;
      }
    }

    notifyListeners();
  }
}
