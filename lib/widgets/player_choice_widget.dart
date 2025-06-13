import 'package:flutter/material.dart';

class PlayerChoice extends StatelessWidget {
  String symbol;
  PlayerChoice({super.key, required this.symbol});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 26),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Image.asset("assets/images/$symbol.png"),
    );
  }
}
