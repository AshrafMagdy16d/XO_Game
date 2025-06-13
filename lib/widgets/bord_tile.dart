import 'package:flutter/material.dart';

typedef OnPlayerClick = void Function(int);

class BordTile extends StatelessWidget {
  String SymbolText;
  OnPlayerClick onPlayerClick;
  int index;
  BordTile({
    super.key,
    required this.SymbolText,
    required this.index,
    required this.onPlayerClick,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          onPlayerClick(index);
        },
        child:
            SymbolText.isEmpty
                ? Container()
                : Image.asset("assets/images/$SymbolText.png"),
      ),
    );
  }
}
