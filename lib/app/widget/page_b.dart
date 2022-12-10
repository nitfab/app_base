import 'package:flutter/material.dart';
import 'chat_list.dart';
import 'package:chessground/chessground.dart';

class PageB extends StatefulWidget {
  const PageB({super.key});

  @override
  State<PageB> createState() => _PageBState();
}

class _PageBState extends State<PageB> {
  String fen = 'rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR';
  bool _showOverlay = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Stack(
                // decoration: const BoxDecoration(
                //     // border: Border.all(
                //     //   color:
                //     //       const Color.fromARGB(255, 241, 243, 245),
                //     // ),
                //     ),
                children: [
                  //Stack Child 1
                  Column(
                    children: [
                      // Column Child 1
                      Container(
                        padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          border: Border(
                            left: BorderSide(
                              width: 1,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                          ),
                        ),
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
                            Container(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Text(
                                "Hello",
                                // _items[groupIdInt]['name'].toString(),
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.only(right: 10),
                              child: const Icon(
                                Icons.search,
                                // color: Colors.black,
                              ),
                            ),
                            PopupMenuButton(
                              padding: const EdgeInsets.all(8),
                              iconSize: 28,
                              itemBuilder: ((context) => [
                                    const PopupMenuItem(
                                      value: 1,
                                      child: Text(
                                        "Group info",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    const PopupMenuItem(
                                      value: 2,
                                      child: Text(
                                        "Select message",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    const PopupMenuItem(
                                      value: 3,
                                      child: Text(
                                        "Unmute notification",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    const PopupMenuItem(
                                      value: 4,
                                      child: Text(
                                        "Clear message",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    const PopupMenuItem(
                                      value: 5,
                                      child: Text(
                                        "Payments",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    const PopupMenuItem(
                                      value: 6,
                                      child: Text(
                                        "Settings",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ]),
                              child: const Icon(
                                Icons.more_vert,
                                // color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Column Child 2
                      const Expanded(
                        child: ChatList(
                          id: 1,
                        ),
                        // child: ChatList(
                        //   id: groupIdInt,
                        //   // isImageSelected: isImageSelected,
                        //   // selectedImage: _selectedImage,
                        // ),
                        // isImageSelected
                        //     ? Column(
                        //         mainAxisAlignment:
                        //             MainAxisAlignment.end,
                        //         crossAxisAlignment:
                        //             CrossAxisAlignment.end,
                        //         children: [
                        //           FEN(
                        //             title: _selectedImage,
                        //           ),
                        //         ],
                        //       )
                        //     : const Text(""),

                        // isImageSelected
                        // ? Column(
                        //     mainAxisAlignment: MainAxisAlignment.end,
                        //     crossAxisAlignment:
                        //         CrossAxisAlignment.end,
                        //     children: [
                        //       FEN(
                        //         title: _selectedImage,
                        //       ),
                        //     ],
                        //   )
                        // : const Text(""),
                      ),

                      // Column Child 3
                      Container(
                        // color: const Color.fromARGB(255, 240, 242, 245),
                        padding: const EdgeInsets.fromLTRB(10, 5, 17, 5),
                        color: Theme.of(context).colorScheme.secondary,
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                              child: const Icon(
                                Icons.group_add,
                                // color: Colors.black,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                              child: IconButton(
                                // key: globalKey,
                                icon: Icon(
                                  Icons.outlined_flag,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _showOverlay = true;
                                  });
                                },
                              ),
                            ),
                            // Spacer(),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.only(
                                    right: 8.0, top: 4, bottom: 4),
                                child: TextField(
                                  cursorHeight: 25,
                                  decoration: InputDecoration(
                                      isDense: true, // Added this
                                      contentPadding: const EdgeInsets.all(16),
                                      // labelStyle: TextStyle(
                                      //   height: 10.0,
                                      // ),
                                      fillColor: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      // fillColor: Colors.white,
                                      filled: true,
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 0, style: BorderStyle.none),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)),
                                      ),
                                      hintText: 'Type a message...'),
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.more_vert,
                              // color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  //Stack Child 2
                  Visibility(
                    visible: _showOverlay,
                    child: Positioned(
                      top: 104,
                      left: 0,
                      child: SizedBox(
                        width: 988,
                        height: 580,
                        // color: Colors.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: DefaultTabController(
                                length: 3,
                                child: Scaffold(
                                  // backgroundColor:
                                  //     Theme.of(context).colorScheme.secondary,
                                  appBar: AppBar(
                                    // backgroundColor: Colors.grey,
                                    bottom: PreferredSize(
                                      preferredSize: Size(500, 0),
                                      child: Container(
                                        width: 500,
                                        child: TabBar(
                                          isScrollable: true,
                                          tabs: [
                                            Tab(text: "Images"),
                                            Tab(text: "Dates"),
                                            Tab(text: "Colors"),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  body: TabBarView(
                                    children: [
                                      Container(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 15, 15, 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const TextField(
                                              cursorHeight: 25,
                                              decoration: InputDecoration(
                                                  isDense: true, // Added this
                                                  contentPadding:
                                                      EdgeInsets.all(16),
                                                  labelStyle: TextStyle(
                                                    height: 2.0,
                                                  ),
                                                  // fillColor: Colors.white,
                                                  // fillColor: Colors.white,
                                                  filled: true,
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      width: 0,
                                                      style: BorderStyle.none,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)),
                                                  ),
                                                  hintText: 'Search Puzzles'),
                                            ),
                                            for (int i = 0;
                                                i < 5;
                                                // i < fendata.length;
                                                i++)
                                              InkWell(
                                                // onTap: () {
                                                //   setState(() {
                                                //     showTextField = true;
                                                //     fenData = fendata[i]["fen"]
                                                //         .toString();
                                                //   });
                                                // },
                                                child: Container(
                                                  margin: const EdgeInsets.only(
                                                      top: 10),
                                                  child: Text(
                                                      "Intital Position",
                                                      // fendata[i]["title"]
                                                      //     .toString(),
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleMedium),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 15, 15, 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const TextField(
                                              cursorHeight: 25,
                                              decoration: InputDecoration(
                                                  isDense: true, // Added this
                                                  contentPadding:
                                                      EdgeInsets.all(16),
                                                  labelStyle: TextStyle(
                                                    height: 2.0,
                                                  ),
                                                  // fillColor: Colors.white,
                                                  // fillColor: Colors.white,
                                                  filled: true,
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      width: 0,
                                                      style: BorderStyle.none,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)),
                                                  ),
                                                  hintText: 'Search Puzzles'),
                                            ),
                                            for (int i = 0;
                                                i < 5;
                                                // i < fendata.length;
                                                i++)
                                              InkWell(
                                                // onTap: () {
                                                //   setState(() {
                                                //     showTextField = true;
                                                //     fenData = fendata[i]["fen"]
                                                //         .toString();
                                                //   });
                                                // },
                                                child: Container(
                                                  margin: const EdgeInsets.only(
                                                      top: 10),
                                                  child: Text(
                                                      "Intital Position",
                                                      // fendata[i]["title"]
                                                      //     .toString(),
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleMedium),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 15, 15, 15),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const TextField(
                                              cursorHeight: 0,
                                              decoration: InputDecoration(
                                                  isDense: true, // Added this
                                                  contentPadding:
                                                      EdgeInsets.all(16),
                                                  labelStyle: TextStyle(
                                                    height: 2.0,
                                                  ),
                                                  // fillColor: Colors.white,
                                                  // fillColor: Colors.white,
                                                  filled: true,
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      width: 0,
                                                      style: BorderStyle.none,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10)),
                                                  ),
                                                  hintText: 'Search Puzzles'),
                                            ),
                                            for (int i = 0;
                                                i < 5;
                                                // i < fendata.length;
                                                i++)
                                              InkWell(
                                                // onTap: () {
                                                //   setState(() {
                                                //     showTextField = true;
                                                //     fenData = fendata[i]["fen"]
                                                //         .toString();
                                                //   });
                                                // },
                                                child: Container(
                                                  margin: const EdgeInsets.only(
                                                      top: 10),
                                                  child: Text("Intial Position",
                                                      // fendata[i]["title"]
                                                      //     .toString(),
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleMedium),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Material(
                                child: Scaffold(
                                  // backgroundColor:
                                  //     Theme.of(context).colorScheme.secondary,
                                  appBar: AppBar(
                                    // backgroundColor: Colors.grey,
                                    titleSpacing: 0,
                                    title: Text(
                                      "Hello",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                    actions: <Widget>[
                                      IconButton(
                                        icon: Icon(
                                          Icons.delete,
                                          color:
                                              Color.fromARGB(255, 16, 212, 117),
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _showOverlay = false;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                  body: Container(
                                    decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      border: Border(
                                        left: BorderSide(
                                          width: 1,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                        ),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 20),
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Preview",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 20),
                                          child: Align(
                                            alignment: Alignment.center,
                                            child: Board(
                                              interactableSide:
                                                  InteractableSide.none,
                                              size: 250,
                                              orientation: Side.white,
                                              fen: fen,
                                            ),
                                          ),
                                        ),
                                        // Container(
                                        //   margin: const EdgeInsets.only(top: 10, bottom: 10),
                                        //   padding: const EdgeInsets.only(left: 30),
                                        //   alignment: Alignment.centerLeft,
                                        //   // alignment: Alignment.centerLeft,
                                        //   child: GestureDetector(
                                        //     // onTap: () {
                                        //     //   setState(() {
                                        //     //     _selectedImage = fenData;
                                        //     //     isImageSelected = true;
                                        //     //   });
                                        //     //   hideOverlay();
                                        //     // },
                                        //     // child: FEN(
                                        //     //   title: fenData,
                                        //     // ),
                                        //   ),
                                        // ),
                                        Container(
                                          margin: EdgeInsets.only(top: 20),
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Properties",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10),
                                          // color: Colors.white,
                                          padding: const EdgeInsets.all(20.0),
                                          child: Table(
                                            columnWidths: const {
                                              0: FlexColumnWidth(1),
                                              1: FlexColumnWidth(2),
                                            },
                                            border: TableBorder.all(
                                                color: Colors.black),
                                            children: [
                                              TableRow(
                                                children: [
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(8),
                                                    child: Text(
                                                      'hex',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleSmall,
                                                    ),
                                                  ),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(8),
                                                    child: Text(
                                                      '#EAB308',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleSmall,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              TableRow(
                                                children: [
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(8),
                                                    child: Text(
                                                      'rgb',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleSmall,
                                                    ),
                                                  ),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(8),
                                                    child: Text(
                                                      'rgb(234, 179, 8',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleSmall,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              TableRow(
                                                children: [
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(8),
                                                    child: Text(
                                                      'hsl',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleSmall,
                                                    ),
                                                  ),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.all(8),
                                                    child: Text(
                                                      '#EAB308',
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleSmall,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
