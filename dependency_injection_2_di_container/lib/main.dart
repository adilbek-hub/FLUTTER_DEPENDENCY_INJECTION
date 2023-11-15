import 'package:dependency_injection_2_di_container/features/presentation/pages/dependency_injection_two.dart';
import 'package:dependency_injection_2_di_container/features/presentation/widgets/calculator_service.dart';
import 'package:dependency_injection_2_di_container/features/presentation/widgets/summator.dart';
import 'package:flutter/material.dart';

import 'package:dependency_injection_2_di_container/example_view_model.dart';

void main() {
  const simmator = Summator();
  const service = CalculatorService(simmator);
  const model = ExampleCalcViewModel2(service);
  const widget = DependencyInjection(model: model);
  const app = MyApp(widget: widget);
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.widget,
  }) : super(key: key);
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: widget,
    );
  }
}
