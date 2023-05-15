import 'package:flutter/material.dart';
import 'package:expenses_app/widgets/expenses.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    debugShowCheckedModeBanner: false,
    home: const Expenses(),
  ));
}
