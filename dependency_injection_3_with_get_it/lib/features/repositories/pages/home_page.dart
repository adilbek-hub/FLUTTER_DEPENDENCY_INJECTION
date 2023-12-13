import 'package:dependency_injection_3_with_get_it/features/data/app_service.dart';
import 'package:dependency_injection_3_with_get_it/features/data/injection_container.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Hello Gyes'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: () {
                String currentDate = locator<AppService>().execute();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(currentDate),
                  ),
                );
              },
              child: Text('Get Date'),
            ),
            OutlinedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: () {},
              child: Text('Detail Page'),
            ),
          ],
        ),
      ),
    );
  }
}
