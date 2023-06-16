import 'package:flutter/material.dart';
import 'package:todo_app/pages/login_page.dart';
import 'package:todo_app/pages/register_page.dart';
import 'package:todo_app/pages/todo_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoPage(),
    );
  }
}
