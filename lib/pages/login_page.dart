import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _loginController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.blue],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 46,
                        fontWeight: FontWeight.w200,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: _loginController,
                    decoration: const InputDecoration(
                      labelText: "Please Enter Username",
                      labelStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 5,
                      backgroundColor: Colors.purple,
                    ),
                    child: const Text("Continue"),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Register a New User",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
