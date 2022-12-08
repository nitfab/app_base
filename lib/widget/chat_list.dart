import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:web/widget/fen.dart';
import 'package:web/widget/fenLeft.dart';
import '../data.dart';
import 'sender_message_card.dart';
import 'my_message_card.dart';

class ChatList extends StatefulWidget {
  final int id;

  const ChatList({Key? key, required this.id}) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  List _items = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/base.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["base.uri"]["groups"][widget.id]["messages"];
    });
  }

  @override
  void initState() {
    super.initState();
    // Call the readJson method when the app starts
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length,
      itemBuilder: (context, index) {
        if (_items[index]["isMe"] == true && _items[index]["type"] == "text") {
          return MyMessageCard(
            message: _items[index]["text"].toString(),
            date: _items[index]["time"].toString(),
          );
        } else if (_items[index]["isMe"] == false &&
            _items[index]["type"] == "text") {
          return SenderMessageCard(
            message: _items[index]["text"].toString(),
            date: _items[index]["time"].toString(),
          );
        } else if (_items[index]["isMe"] == false &&
            _items[index]["type"] == "email") {
          return SenderMessageCard(
            message: _items[index]["email"].toString(),
            date: _items[index]["time"].toString(),
          );
        } else if (_items[index]["isMe"] == true &&
            _items[index]["type"] == "email") {
          return MyMessageCard(
            message: _items[index]["email"].toString(),
            date: _items[index]["time"].toString(),
          );
        } else if (_items[index]["isMe"] == false &&
            _items[index]["type"] == "puzzle") {
          return FENLeft(
            title: _items[index]["fen"].toString(),
          );
        } else if (_items[index]["isMe"] == true &&
            _items[index]["type"] == "puzzle") {
          return FEN(
            title: _items[index]["fen"].toString(),
          );
        }
      },
    );
  }
}
