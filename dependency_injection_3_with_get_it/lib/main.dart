import 'package:dependency_injection_3_with_get_it/features/data/injection_container.dart';
import 'package:dependency_injection_3_with_get_it/features/repositories/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  setUp();
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
      home: HomePage(),
    );
  }
}
