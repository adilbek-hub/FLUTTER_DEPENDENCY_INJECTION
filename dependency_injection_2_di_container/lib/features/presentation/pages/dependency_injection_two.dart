import 'package:flutter/material.dart';

//https://miro.com/app/board/uXjVNRGPZyw=/
abstract class ExampleAbstractClass {
  void onPressMe1();
  void onPressMe2();
}

class DependencyInjection extends StatelessWidget {
  const DependencyInjection({super.key, required this.model});
  final ExampleAbstractClass model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DEPENDENCY INJECTION'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: model.onPressMe1,
              child: const Text('Button Me1'),
            ),
            ElevatedButton(
              onPressed: model.onPressMe2,
              child: const Text('Button Me2'),
            ),
          ],
        ),
      ),
    );
  }
}
