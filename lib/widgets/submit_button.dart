import 'package:flutter/material.dart';

class ElevatedSubmitButton extends StatelessWidget {
  const ElevatedSubmitButton({
    super.key,
    required this.text,
    required this.onClick,
  });
  final String text;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: ElevatedButton(
        onPressed: onClick,
        style: ElevatedButton.styleFrom(
          elevation: 5,
          backgroundColor: Colors.purple,
        ),
        child: Text(text),
      ),
    );
  }
}