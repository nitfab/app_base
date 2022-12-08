import 'package:flutter/material.dart';
import 'package:web/widget/fen.dart';
import '../data.dart';

class MyMessageCard extends StatelessWidget {
  final String message;
  final String date;

  const MyMessageCard({Key? key, required this.message, required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: Color.fromARGB(255, 60, 115, 50),
          // color: Color.fromRGBO(217, 253, 211, 1),
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 30,
                  top: 5,
                  bottom: 20,
                ),
                child: Text(
                  message,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 10,
                child: Row(
                  children: [
                    Text(
                      date,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.white60,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.done_all,
                      size: 20,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              // isImageSelected
              //     ? Column(
              //         mainAxisAlignment: MainAxisAlignment.end,
              //         crossAxisAlignment: CrossAxisAlignment.end,
              //         children: [
              //           FEN(
              //             title: selectedImage,
              //           ),
              //         ],
              //       )
              //     : const Text(""),
            ],
          ),
        ),
      ),
    );
  }
}
