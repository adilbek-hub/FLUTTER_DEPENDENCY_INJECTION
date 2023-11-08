import 'package:dependency_injection_1/example_view_model.dart';
import 'package:dependency_injection_1/features/presentation/pages/dependency_injection_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DependencyInjection(
        exampleAbstractClass: ExamplePetViewModel2(),
      ),
    );
  }
}
