import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:foa/src/core/presentation/screens/system_error_screen.dart';
import 'package:foa/src/injection_container.dart' as di;
import 'package:foa/src/app.dart';

void main() {

  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await di.init();
    ErrorWidget.builder = (errorDetails) => const CustomSystemErrorScreen();
    await Firebase.initializeApp( options: getFirebaseOption());
    runApp(const App());
  }, (error, stack) =>
      print(error));
}

getFirebaseOption(){
  return const FirebaseOptions(
    apiKey: 'AIzaSyDNpmI31GHVIwiJrsPm0xoGrK8IfP1zmX4',
    appId: '1:1063805224929:android:f9884019a38486af6a74a0',
    messagingSenderId: 'YOUR_SENDER_ID',
    projectId: 'food-ordering-app-5c844',
    storageBucket: 'food-ordering-app-5c844.firebasestorage.app'
  );
}