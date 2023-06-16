import 'package:flutter/material.dart';

class UserName extends ChangeNotifier {
  String _username = '';
  String get username => _username;
  set username(String name) {
    _username = name;
    notifyListeners();
  }
}
