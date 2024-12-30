
import 'package:delivery_app/screens/navigation_bar.dart';
import 'package:delivery_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,theme: lightTheme, home: const NavigationBarScreen());
  }
}
