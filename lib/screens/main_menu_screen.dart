import 'package:flutter/material.dart';
import 'package:mp_tictactoe/responsive/responsive.dart';
import 'package:mp_tictactoe/screens/create_room_screen.dart';
import 'package:mp_tictactoe/screens/join_room_screen.dart';
import 'package:mp_tictactoe/utils/colors.dart';
import 'package:mp_tictactoe/widgets/custom_button.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName = '/main_menu';
  const MainMenuScreen({super.key});

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoomScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: bgColor,
          ),
      body: Responsive(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Tic Tac Toe",
                  style: TextStyle(
                    fontSize: 50,
                  )),
              SizedBox(height: 50),
              CustomButton(
                  onTap: () => createRoom(context), text: "Create Room"),
              SizedBox(height: 20),
              CustomButton(onTap: () => joinRoom(context), text: "Join Room"),
            ]),
      ),
    );
  }
}
