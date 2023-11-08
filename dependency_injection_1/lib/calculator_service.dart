import 'package:dependency_injection_1/summator.dart';

enum CalculatorServiceOperator { summa }

class CalculatorService {
  const CalculatorService();
  final summ = const Summator();
  int calculator(int a, int b, CalculatorServiceOperator operator) {
    if (operator == CalculatorServiceOperator.summa) {
      return summ.summ(1, 3);
    }
    return 0;
  }
}
