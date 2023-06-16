import 'package:flutter/material.dart';
import 'package:todo_app/pages/login_page.dart';
import 'package:todo_app/pages/register_page.dart';
import 'package:todo_app/pages/todo_page.dart';

class Routes {
  static const loginPage = "/";
  static const registerPage = "/register";
  static const todoPage = "/todoPage";

  static Route<dynamic> routeManager(RouteSettings settings) {
    switch (settings.name) {
      case loginPage:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case registerPage:
        return MaterialPageRoute(
          builder: (context) => const RegisterPage(),
        );
      case todoPage:
        return MaterialPageRoute(
          builder: (context) => const TodoPage(),
        );
      default:
        throw const FormatException("NO PAGE FOUND");
    }
  }
}
