import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foa/src/core/presentation/screens/system_error_screen.dart';
import 'package:foa/src/injection_container.dart' as di;
import 'package:foa/src/app.dart';

void main() {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await di.init();
    ErrorWidget.builder = (errorDetails) => const CustomSystemErrorScreen();
    runApp(const App());
  }, (error, stack) =>
      print(error));
}
