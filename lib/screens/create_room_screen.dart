import 'package:flutter/material.dart';
import 'package:mp_tictactoe/resources/socket_methods.dart';
import 'package:mp_tictactoe/responsive/responsive.dart';
import 'package:mp_tictactoe/utils/colors.dart';
import 'package:mp_tictactoe/widgets/custom_button.dart';
import 'package:mp_tictactoe/widgets/custom_text.dart';
import 'package:mp_tictactoe/widgets/custom_textField.dart';

class CreateRoomScreen extends StatefulWidget {
  static String routeName = '/create_room';
  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final SocketMethods _socketMethods = SocketMethods();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _socketMethods.createRoomSuccessListener(context);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
      ),
        body: Responsive(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomText(
              text: "Create Room",
              fontSize: 50,
              // ignore: prefer_const_literals_to_create_immutables
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Colors.blue,
                  offset: Offset(5.0, 5.0),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.08),
            CustomTextField(
                labelText: "Enter nickname", controller: _nameController,
                //bind enter key to create room
                ),
            SizedBox(height: size.height * 0.03),
            CustomButton(
                onTap: () => _socketMethods.createRoom(_nameController.text),
                text: "Create"),
          ],
        ),
      ),
    ));
  }
}
