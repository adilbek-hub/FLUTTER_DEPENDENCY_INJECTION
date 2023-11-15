import 'package:dependency_injection_2_di_container/features/presentation/widgets/summator.dart';

enum CalculatorServiceOperator { summa }

class CalculatorService {
  const CalculatorService(this.summator);
  final Summator summator;

  int calculator(int a, int b, CalculatorServiceOperator operator) {
    if (operator == CalculatorServiceOperator.summa) {
      return summator.summ(a, b);
    }
    return 0;
  }
}
