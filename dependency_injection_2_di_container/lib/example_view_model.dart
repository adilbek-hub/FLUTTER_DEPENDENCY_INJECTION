import 'package:dependency_injection_2_di_container/features/presentation/widgets/calculator_service.dart';
import 'package:dependency_injection_2_di_container/features/presentation/pages/dependency_injection_two.dart';

class ExampleCalcViewModel implements ExampleAbstractClass {
  const ExampleCalcViewModel(this.calculatorService);
  final CalculatorService calculatorService;
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

class ExamplePetViewModel implements ExampleAbstractClass {
  const ExamplePetViewModel();
  @override
  void onPressMe1() {
    print('GAF GAF');
  }

  @override
  void onPressMe2() {
    print('MIAY MIAU');
  }
}
