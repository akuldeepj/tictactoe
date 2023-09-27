import 'package:flutter/material.dart';
import 'package:mp_tictactoe/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool isReadOnly;
  const CustomTextField(
      {super.key,
      required this.labelText,
      required this.controller,
      this.isReadOnly = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 5,
          ),
        ],
      ),
      child: TextField(
        readOnly: isReadOnly,
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: labelText,
        ),
      ),
    );
  }
}
