import 'dart:io';

import 'package:flutter/material.dart';
import 'package:greenmates/common/widgets/base_app_bar.dart';

class ExceptionWidget extends StatelessWidget {
  const ExceptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.green, primary: Colors.green.shade800),
        textTheme: const TextTheme(
            titleLarge: TextStyle(
              color: Colors.white,
            ),
            titleSmall: TextStyle(color: Colors.white)),
        useMaterial3: true,
      ),
      builder: (context, child) {
        return Scaffold(
          appBar: const BaseAppBar(title: 'Error'),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Something went wrong. Please try again later.',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () => exit(1), child: const Text('OK'))
              ],
            ),
          ),
        );
      },
    );
  }
}
