import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/pages/login_page.dart';
import 'package:todo_app/pages/register_page.dart';
import 'package:todo_app/pages/todo_page.dart';
import 'package:todo_app/providers/username_provider.dart';
import 'package:todo_app/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserName(),
        ),
      ],
      builder: (context, child) {
        return const MaterialApp(
          initialRoute: Routes.loginPage,
          onGenerateRoute: Routes.routeManager,
        );
      },
    );
  }
}
