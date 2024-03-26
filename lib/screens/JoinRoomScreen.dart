import 'package:flutter/material.dart';

import '../resources/SocketMethods.dart';
import '../responsive/Responsive.dart';
import '../widgets/CustomBtn.dart';
import '../widgets/CustomText.dart';
import '../widgets/CustomTextField.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName = '/join-room';
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _gameIdController = TextEditingController();
  final SocketMethods _socketMethods = SocketMethods();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _socketMethods.joinRoomSuccessListener(context);
    _socketMethods.errorOccuredListener(context);
    _socketMethods.updatePlayersStateListener(context);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _nameController.dispose();
    _gameIdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Responsive(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(
                  shadow: [Shadow(blurRadius: 25, color: Color(0xffA0DDFF))],
                  text: 'Join   Room',
                  fontSize: 70),
              SizedBox(
                height: size.height * 0.08,
              ),
              CustomTextField(
                  controller: _nameController, hint: "Enter your nickname"),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                  controller: _gameIdController, hint: "Enter game id"),
              SizedBox(
                height: size.height * 0.05,
              ),
              CustomBtn(
                  onTap: () => _socketMethods.joinRoom(
                      _nameController.text, _gameIdController.text),
                  text: "Join")
            ],
          ),
        ),
      ),
    );
  }
}
