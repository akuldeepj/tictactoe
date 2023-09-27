import 'package:flutter/material.dart';
import 'package:mp_tictactoe/provider/room_data_provider.dart';
import 'package:mp_tictactoe/widgets/custom_textField.dart';
import 'package:provider/provider.dart';

class WaitingLobby extends StatefulWidget {
  const WaitingLobby({super.key});

  @override
  State<WaitingLobby> createState() => _WaitingLobbyState();
}

class _WaitingLobbyState extends State<WaitingLobby> {
  late TextEditingController roomIdController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    roomIdController = TextEditingController(
        text: Provider.of<RoomDataProvider>(context,
                listen:
                    false) // when we out of build method we need to use listen: false
            .roomData['_id']);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    roomIdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text(
            "Waiting for other player to join...",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            child: CustomTextField(
                labelText: '', controller: roomIdController, isReadOnly: true),
          ),
        ],
      ),
    );
  }
}
