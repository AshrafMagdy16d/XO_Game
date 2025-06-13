import 'package:flutter/material.dart';
import 'package:xo_game/widgets/bord_tile.dart';

class GameBordingScreen extends StatelessWidget {
  static const routeName = 'GameBordingScreen';
  const GameBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xff00D2FF), Color(0xff3A7BD5)],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(44),
                    color: Colors.white,
                  ),
                  child: Text(
                    '0:05',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Player 1’s Turn",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(44),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  BordTile(SymbolText: "x"),
                                  Container(
                                    width: 1,
                                    height: double.infinity,
                                    color: Colors.black,
                                  ),
                                  BordTile(SymbolText: "o"),
                                  Container(
                                    width: 1,
                                    height: double.infinity,
                                    color: Colors.black,
                                  ),
                                  BordTile(SymbolText: ""),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  BordTile(SymbolText: "x"),
                                  Container(
                                    width: 1,
                                    height: double.infinity,
                                    color: Colors.black,
                                  ),
                                  BordTile(SymbolText: "o"),
                                  Container(
                                    width: 1,
                                    height: double.infinity,
                                    color: Colors.black,
                                  ),
                                  BordTile(SymbolText: ""),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  BordTile(SymbolText: "x"),
                                  Container(
                                    width: 1,
                                    height: double.infinity,
                                    color: Colors.black,
                                  ),
                                  BordTile(SymbolText: "o"),
                                  Container(
                                    width: 1,
                                    height: double.infinity,
                                    color: Colors.black,
                                  ),
                                  BordTile(SymbolText: ""),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
