import 'package:flutter/material.dart';
import 'package:todo_app/widgets/text_field.dart';

import '../widgets/submit_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
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
                  // Register User Text
                  const Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Text(
                      "Register User",
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w200,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  // Username TextField
                  InputTextField(
                    controller: userNameController,
                    labelText: "Enter Username",
                  ),

                  // Password TextField
                  InputTextField(
                    controller: passwordController,
                    labelText: "Enter Password",
                  ),

                  // Register Button
                  ElevatedSubmitButton(
                    text: "Register",
                    onClick: () {},
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 10,
          child: SafeArea(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                size: 35,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
