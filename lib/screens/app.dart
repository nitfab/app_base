// ignore_for_file: import_of_legacy_library_into_null_safe

import 'dart:convert';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web/widget/fen.dart';
// import 'fen.dart';
import '../bloc/bloc.dart';
import '../bloc/bloc_state.dart';
import '../data.dart';
import 'package:provider/provider.dart';
import '../provider/theme_provider.dart';
import '../widget/change_theme_button_widget.dart';
import '../widget/chat_list.dart';

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyBloc(),
      child: MyWidget2(),
    );
  }
}

class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Whatsapp Web"),
        // actions: const [
        //   ChangeThemeButtonWidget(),
        // ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //First Column
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      // border: Border.all(
                      //   color: const Color.fromARGB(255, 241, 243, 245),
                      // ),
                      ),
                  child: ListView(
                    children: [
                      Card(
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          // color: const Color.fromARGB(255, 240, 242, 245),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset(
                                  "images/lake.jpeg",
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: const Icon(
                                  Icons.message_rounded,
                                  // color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            // margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                            // decoration: const BoxDecoration(
                            //     border: Border(
                            //   // top: BorderSide(
                            //   //     width: 1.0,
                            //   //     color: Colors.lightBlue.shade600),
                            //   bottom: BorderSide(
                            //     width: 1.0,
                            //     color: Color.fromARGB(255, 18, 80, 173),
                            //   ),
                            // )),
                            padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                            child: const TextField(
                              cursorHeight: 25,
                              decoration: InputDecoration(
                                isDense: true, // Added this
                                contentPadding: EdgeInsets.all(8),
                                labelStyle: TextStyle(
                                  height: 2.0,
                                ),
                                prefixIcon: Icon(Icons.search),
                                // fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                hintText: 'Search or start new chat',
                              ),
                            ),
                          ),
                          Divider(
                            height: 4,
                          )
                        ],
                      ),

                      //Users
                      for (int i = 0; i < 3; i++)
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                // setState(() {
                                //   var groupId = _items[i]['id'].toString();
                                //   groupIdInt = int.parse(groupId);
                                //   showChatArea = true;
                                // });
                              },
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(40),
                                        child: Image.asset(
                                          "images/lake.jpeg",
                                          height: 49,
                                          width: 49,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      // Group Names
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "Hello",
                                              // _items[i]['name'].toString(),
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              "Hii",
                                              // _items[i]['message'].toString(),
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Spacer(),
                                      Column(
                                        children: [
                                          const Text(
                                            "12:15",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Color(0xFF0FCE5E),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          const SizedBox(height: 6),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 27,
                                            height: 27,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF0FCE5E),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: const Text(
                                              "2",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                // color: Colors.white,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                // ),
                              ),
                            ),
                            Divider(
                              height: 2,
                              indent: 80,
                            )
                          ],
                        )
                    ],
                  ),
                ),
              ),

              BlocBuilder<MyBloc, MyState>(
                builder: (_, state) => state is StateA ? const defaultScreen() : const initialChatArea(),
              ),
              //Second Column
            ],
          ),
        ),
      ),
    );
  }

}


