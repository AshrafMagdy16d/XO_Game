import 'package:flutter/material.dart';
import 'package:xo_game/widgets/bord_tile.dart';

class GameBordingScreen extends StatefulWidget {
  static const routeName = 'GameBordingScreen';

  @override
  State<GameBordingScreen> createState() => _GameBordingScreenState();
}

class _GameBordingScreenState extends State<GameBordingScreen> {
  List<String> bordState = ['', '', '', '', '', '', '', '', ''];

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
                    'X : $player1Score  & O : $player2Score',
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
                                  BordTile(
                                    SymbolText: bordState[0],
                                    index: 0,
                                    onPlayerClick: onPlayerClick,
                                  ),
                                  Container(
                                    width: 1,
                                    height: double.infinity,
                                    color: Colors.black,
                                  ),
                                  BordTile(
                                    SymbolText: bordState[1],
                                    index: 1,
                                    onPlayerClick: onPlayerClick,
                                  ),
                                  Container(
                                    width: 1,
                                    height: double.infinity,
                                    color: Colors.black,
                                  ),
                                  BordTile(
                                    SymbolText: bordState[2],
                                    index: 2,
                                    onPlayerClick: onPlayerClick,
                                  ),
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
                                  BordTile(
                                    SymbolText: bordState[3],
                                    index: 3,
                                    onPlayerClick: onPlayerClick,
                                  ),
                                  Container(
                                    width: 1,
                                    height: double.infinity,
                                    color: Colors.black,
                                  ),
                                  BordTile(
                                    SymbolText: bordState[4],
                                    index: 4,
                                    onPlayerClick: onPlayerClick,
                                  ),
                                  Container(
                                    width: 1,
                                    height: double.infinity,
                                    color: Colors.black,
                                  ),
                                  BordTile(
                                    SymbolText: bordState[5],
                                    index: 5,
                                    onPlayerClick: onPlayerClick,
                                  ),
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
                                  BordTile(
                                    SymbolText: bordState[6],
                                    index: 6,
                                    onPlayerClick: onPlayerClick,
                                  ),
                                  Container(
                                    width: 1,
                                    height: double.infinity,
                                    color: Colors.black,
                                  ),
                                  BordTile(
                                    SymbolText: bordState[7],
                                    index: 7,
                                    onPlayerClick: onPlayerClick,
                                  ),
                                  Container(
                                    width: 1,
                                    height: double.infinity,
                                    color: Colors.black,
                                  ),
                                  BordTile(
                                    SymbolText: bordState[8],
                                    index: 8,
                                    onPlayerClick: onPlayerClick,
                                  ),
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

  int counter = 0;
  int player1Score = 0;
  int player2Score = 0;

  void onPlayerClick(int index) {
    if (bordState[index].isNotEmpty) {
      return;
    }

    if (counter % 2 == 0) {
      bordState[index] = 'x';
    } else {
      bordState[index] = 'o';
    }
    counter++;
    if (checkWinner('x')) {
      player1Score++;
      Future.delayed(Duration(seconds: 1), () => restBoard());
    } else if (checkWinner('o')) {
      player2Score++;
      Future.delayed(Duration(seconds: 1), () => restBoard());
    } else if (counter == 9) {
      Future.delayed(Duration(seconds: 1), () => restBoard());
    }

    setState(() {});
  }

  bool checkWinner(String symbol) {
    for (int i = 0; i < 9; i = i + 3) {
      if (bordState[i] == symbol &&
          bordState[i + 1] == symbol &&
          bordState[i + 2] == symbol) {
        return true;
      }
    }
    for (int i = 0; i < 3; i++) {
      if (bordState[i] == symbol &&
          bordState[i + 3] == symbol &&
          bordState[i + 6] == symbol) {
        return true;
      }
    }
    if (bordState[0] == symbol &&
        bordState[4] == symbol &&
        bordState[8] == symbol) {
      return true;
    }
    if (bordState[2] == symbol &&
        bordState[4] == symbol &&
        bordState[6] == symbol) {
      return true;
    }
    return false;
  }

  void restBoard() {
    bordState = ['', '', '', '', '', '', '', '', ''];
    counter = 0;
    setState(() {});
  }
}
