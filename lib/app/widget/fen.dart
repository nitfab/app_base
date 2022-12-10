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
      child: Container(
        margin: const EdgeInsets.only(right: 57, left: 71),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Board(
                interactableSide: InteractableSide.none,
                size: screenWidth,
                orientation: Side.white,
                fen: widget.title,
              ),
              const Icon(
                Icons.done_all,
                size: 20,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
