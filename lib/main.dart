import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:glee/consts/theme.dart';
import 'package:glee/screens/onboarding.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData(),
      title: 'Glee',
      home: const Onboarding(),
    );
  }
}
