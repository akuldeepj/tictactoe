// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const CustomButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(fontSize: 16),
        ),
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.blue,
          elevation: 10,
          primary: Colors.blue,
          onPrimary: Colors.white,
          minimumSize: Size(width, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
