import 'package:flutter/material.dart';

//https://miro.com/app/board/uXjVNRGPZyw=/
abstract class ExampleAbstractClass {
  void onPressMe1();
  void onPressMe2();
}

class DependencyInjection extends StatelessWidget {
  const DependencyInjection({super.key, required this.exampleAbstractClass});
  final ExampleAbstractClass exampleAbstractClass;

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
              onPressed: exampleAbstractClass.onPressMe1,
              child: const Text('Button Me1'),
            ),
            ElevatedButton(
              onPressed: exampleAbstractClass.onPressMe2,
              child: const Text('Button Me2'),
            ),
          ],
        ),
      ),
    );
  }
}
