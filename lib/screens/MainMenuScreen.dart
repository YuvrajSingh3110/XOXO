import 'package:flutter/material.dart';
import 'package:tictactoe/responsive/Responsive.dart';
import 'package:tictactoe/screens/CreateRoomScreen.dart';
import 'package:tictactoe/screens/JoinRoomScreen.dart';
import 'package:tictactoe/widgets/CustomBtn.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName = '/main-menu';
  const MainMenuScreen({super.key});

  void createRoom(BuildContext context){
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }

  void joinRoom(BuildContext context){
    Navigator.pushNamed(context, JoinRoomScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Responsive(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomBtn(onTap: () => createRoom(context), text: "Create Room"),
              const SizedBox(height: 30,),
              CustomBtn(onTap: () => joinRoom(context), text: "Join Room")
            ],
          ),
        ),
      ),
    );
  }
}
