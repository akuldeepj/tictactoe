import 'package:flutter/material.dart';
import 'package:mp_tictactoe/resources/game_methdos.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
    ),
  );
}

void showGameDialog(BuildContext context, String text) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(text),
          actions: [
            TextButton(
                onPressed: () {
                  GameMethods().clearBoard(context);
                  Navigator.pop(context);
                },
                child: Text('Play Again'))
          ],
        );
      });
}
