import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/provider/RoomDataProvider.dart';
import 'package:tictactoe/screens/CreateRoomScreen.dart';
import 'package:tictactoe/screens/GameScreen.dart';
import 'package:tictactoe/screens/JoinRoomScreen.dart';
import 'package:tictactoe/screens/MainMenuScreen.dart';
import 'package:tictactoe/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RoomDataProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgColor
        ),
        routes: {
          MainMenuScreen.routeName: (context) => MainMenuScreen(),
          JoinRoomScreen.routeName: (context) => JoinRoomScreen(),
          CreateRoomScreen.routeName: (context) => CreateRoomScreen(),
          GameScreen.routeName: (context) => GameScreen(),
        },
        initialRoute: MainMenuScreen.routeName,
      ),
    );
  }
}
