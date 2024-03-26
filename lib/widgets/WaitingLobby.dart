import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/provider/RoomDataProvider.dart';
import 'package:tictactoe/widgets/CustomTextField.dart';

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
      text: Provider.of<RoomDataProvider>(context, listen: false).roomData['_id']
    );
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
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Waiting for a player to join", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          const SizedBox(height: 25,),
          const Text("Room Id:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
          const SizedBox(height: 15,),
          CustomTextField(controller: roomIdController, hint: "", isReadOnly: true)
        ],
      ),
    );
  }
}
