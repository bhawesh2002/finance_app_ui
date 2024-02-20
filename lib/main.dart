import 'package:finance_app_ui/screens/screen1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FinanceApp());
}

class FinanceApp extends StatelessWidget {
  const FinanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Screen1(),
    );
  }
}
