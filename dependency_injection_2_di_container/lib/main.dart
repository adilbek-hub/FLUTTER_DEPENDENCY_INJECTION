import 'package:dependency_injection_2_di_container/features/data/factories/di_conatiner.dart';
import 'package:flutter/material.dart';

abstract class MainDIconatiner {
  Widget makeApp();
}

final diContainer = makeDiContainer();
void main() {
  final app = diContainer.makeApp();
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
