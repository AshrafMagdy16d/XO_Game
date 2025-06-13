import 'package:flutter/material.dart';
import 'package:xo_game/game_border_screen.dart';
import 'package:xo_game/player_screen.dart';

void main() {
  runApp(const XOGame());
}

class XOGame extends StatelessWidget {
  const XOGame({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: playerScreen.routeName,
      routes: {
        playerScreen.routeName: (context) => playerScreen(),
        GameBordingScreen.routeName: (context) => GameBordingScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
