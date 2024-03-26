import 'package:flutter/material.dart';
import 'package:tictactoe/resources/SocketMethods.dart';
import 'package:tictactoe/responsive/Responsive.dart';
import 'package:tictactoe/widgets/CustomBtn.dart';
import 'package:tictactoe/widgets/CustomTextField.dart';
import 'package:tictactoe/widgets/customText.dart';

class CreateRoomScreen extends StatefulWidget {
  static String routeName = '/create-room';
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
    _nameController.dispose();
    super.dispose();
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
                  text: 'Create Room',
                  fontSize: 70),
              SizedBox(
                height: size.height * 0.08,
              ),
              CustomTextField(
                  controller: _nameController, hint: "Enter your nickname"),
              SizedBox(
                height: size.height * 0.05,
              ),
              CustomBtn(onTap: () => _socketMethods.createRoom(_nameController.text), text: "Create")
            ],
          ),
        ),
      ),
    );
  }
}
