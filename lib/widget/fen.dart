import 'package:flutter/material.dart';
import 'package:chessground/chessground.dart';

class FEN extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final String title;

  const FEN({Key? key, required this.title}) : super(key: key);

  @override
  State<FEN> createState() => _FENState();
}

class _FENState extends State<FEN> {
  @override
  Widget build(BuildContext context) {
    const double screenWidth = 300;

    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Board(
          interactableSide: InteractableSide.none,
          size: screenWidth,
          orientation: Side.white,
          fen: widget.title,
        ),
      ),
    );
  }
}
