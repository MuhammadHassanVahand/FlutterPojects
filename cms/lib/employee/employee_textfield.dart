import 'package:flutter/material.dart';

class EmployeeTextField extends StatelessWidget {
  final String text;
  final TextEditingController? controller;

  const EmployeeTextField({super.key, required this.text, this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          label: Text(text),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
