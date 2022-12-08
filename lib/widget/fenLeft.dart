import 'package:flutter/material.dart';
import 'package:chessground/chessground.dart';

class FENLeft extends StatefulWidget {
  final String title;
  const FENLeft({super.key, required this.title});

  @override
  State<FENLeft> createState() => _FENLeftState();
}

class _FENLeftState extends State<FENLeft> {
  @override
  Widget build(BuildContext context) {
    const double screenWidth = 300;

    return Align(
      alignment: Alignment.centerLeft,
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
