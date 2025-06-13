import 'package:flutter/material.dart';

class BordTile extends StatelessWidget {
  String SymbolText;
  BordTile({super.key, required this.SymbolText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child:
            SymbolText.isEmpty
                ? SizedBox()
                : Image.asset("assets/images/$SymbolText.png"),
      ),
    );
  }
}
