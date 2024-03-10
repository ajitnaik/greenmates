import 'dart:ui';

import 'package:flutter/material.dart';

import 'dependency_injection.dart';
import 'error_handling/error_handler.dart';
import 'home/home_page.dart';

void main() {
  ErrorHandler errorHandler = ErrorHandler();

  // Handle errors catched by Flutter framework
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    errorHandler.onErrorDetails(details);
  };

  // Handle errors not caught by Flutter framework
  PlatformDispatcher.instance.onError = (error, stack) {
    errorHandler.onError(error, stack);
    return true;
  };
  configureDependencies();
  runApp(const GreenMatesApp());
}

class GreenMatesApp extends StatelessWidget {
  const GreenMatesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GreenMates',
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
      home: const HomePage(),
    );
  }
}
