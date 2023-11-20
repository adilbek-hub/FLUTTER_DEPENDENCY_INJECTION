import 'package:dependency_injection_2_di_container/example_view_model.dart';
import 'package:dependency_injection_2_di_container/features/presentation/pages/dependency_injection_two.dart';
import 'package:dependency_injection_2_di_container/features/presentation/widgets/calculator_service.dart';
import 'package:dependency_injection_2_di_container/features/presentation/widgets/summator.dart';
import 'package:dependency_injection_2_di_container/main.dart';
import 'package:flutter/material.dart';

MainDIconatiner makeDiContainer() => _DIContainer();

class _DIContainer implements MainDIconatiner {
  Summator _makeSummator() => const Summator();

  CalculatorService _makeCalculatorService() =>
      CalculatorService(_makeSummator());

  ExampleCalcViewModel _makeExampleViewModel() =>
      ExampleCalcViewModel(_makeCalculatorService());

  Widget _makeExampleWidget() =>
      DependencyInjection(model: _makeExampleViewModel());

  Widget makeApp() => MyApp(widget: _makeExampleWidget());
  _DIContainer();
}
