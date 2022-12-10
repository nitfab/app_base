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
      child: Container(
        margin: const EdgeInsets.only(right: 57, left: 71),
        child: Card(
          child: Board(
            interactableSide: InteractableSide.none,
            size: screenWidth,
            orientation: Side.white,
            fen: widget.title,
          ),
        ),
      ),
    );
  }
}
