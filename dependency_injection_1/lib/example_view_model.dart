import 'package:dependency_injection_1/calculator_service.dart';
import 'package:dependency_injection_1/features/presentation/pages/dependency_injection_two.dart';

class ExampleCalcViewModel2 implements ExampleAbstractClass {
  const ExampleCalcViewModel2();
  final calculatorService = const CalculatorService();
  @override
  void onPressMe1() {
    final result = calculatorService.calculator(
      1,
      2,
      CalculatorServiceOperator.summa,
    );
    print(result);
  }

  @override
  void onPressMe2() {
    print('5');
  }
}

class ExamplePetViewModel2 implements ExampleAbstractClass {
  const ExamplePetViewModel2();
  @override
  void onPressMe1() {
    print('GAF GAF');
  }

  @override
  void onPressMe2() {
    print('MIAY MIAU');
  }
}
