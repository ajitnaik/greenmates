import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:greenmates/error_handling/exception_widget.dart';

class ErrorHandler {
  void onErrorDetails(FlutterErrorDetails details) {
    log('onErrorDetails');
    log(details.toString());
    runApp(const ExceptionWidget());
  }

  void onError(Object error, StackTrace stack) {
    log('onError');
    log(error.toString());
    log(stack.toString());
    runApp(const ExceptionWidget());
  }
}
