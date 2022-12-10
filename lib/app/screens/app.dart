// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'fen.dart';
import '../bloc/bloc.dart';
import '../bloc/bloc_event.dart';
import '../bloc/bloc_state.dart';
import '../widget/page_a.dart';
import '../widget/page_b.dart';

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
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (_, theme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: const MyWidget2(),
        );
      },
    );
  }
}

class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MyBloc(),
      child: const MyWidget3(),
    );
  }
}

class MyWidget3 extends StatelessWidget {
  const MyWidget3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Whatsapp Web"),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              context.read<ThemeCubit>().toggleTheme();
            },
            child: const Text('Toggle Theme'),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 1,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                //First Column
                SizedBox(
                  width: MediaQuery.of(context).size.width * .30,
                  child: Container(
                    decoration: const BoxDecoration(
                        // border: Border.all(
                        //   color: const Color.fromARGB(255, 241, 243, 245),
                        // ),
                        ),
                    child: ListView(
                      children: [
                        Container(
                          color: Theme.of(context).colorScheme.secondary,
                          padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
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
                        Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
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
                                    padding:
                                        const EdgeInsets.fromLTRB(12, 8, 12, 8),
                                    color: const Color(0xfffff),
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
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        hintText: 'Search or start new chat',
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 18),
                                  child: const Icon(Icons.filter_list),
                                )
                              ],
                            ),
                            const Divider(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(14, 0, 14, 0),
                                  child: Container(
                                    width: 49,
                                    height: 49,
                                    child: const Icon(
                                      Icons.archive_outlined,
                                      color: Color(0xff00a884),
                                    ),
                                  ),
                                ),
                                Text(
                                  "Archived",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                            // const Divider(
                            //   height: 4,
                            // )
                          ],
                        ),

                        //Users
                        for (int i = 0; i < 3; i++)
                          Column(
                            children: [
                              const Divider(
                                height: 2,
                                indent: 80,
                              ),
                              InkWell(
                                onTap: () {
                                  context.read<MyBloc>().add(EventB());
                                  // setState(() {
                                  //   var groupId = _items[i]['id'].toString();
                                  //   groupIdInt = int.parse(groupId);
                                  //   showChatArea = true;
                                  // });
                                },
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          13, 12, 15, 12),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(40),
                                        child: Image.asset(
                                          "images/lake.jpeg",
                                          height: 49,
                                          width: 49,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    // Group Names
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Hello",
                                          // _items[i]['name'].toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          "Hii, I want to be with you",
                                          // _items[i]['message'].toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall,
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: Column(
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
                                                color: Color(0xff111b21),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              // const Divider(
                              //   height: 2,
                              //   indent: 80,
                              // )
                            ],
                          )
                      ],
                    ),
                  ),
                ),

                Expanded(
                  // child: SizedBox(
                  //   width: MediaQuery.of(context).size.width * .65,
                  child: BlocBuilder<MyBloc, MyState>(
                    builder: (_, state) =>
                        state is StateA ? const PageA() : const PageB(),
                  ),
                  // ),
                ),

                // Expanded(
                //   flex: 5,
                //   child: const Center(child: Text("Click any of the chat")),
                // )
                //Second Column
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// {@template brightness_cubit}
/// A simple [Cubit] that manages the [ThemeData] as its state.
/// {@endtemplate}
class ThemeCubit extends Cubit<ThemeData> {
  /// {@macro brightness_cubit}
  ThemeCubit() : super(_lightTheme);

  static final _lightTheme = ThemeData(
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
    ),
    primaryColor: Colors.yellow,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF202020),
      onPrimary: Color.fromARGB(255, 255, 255, 255),
      secondary: Color(0xfff0f2f5),
      onSecondary: Color(0xfff0f2f5),
      error: Color(0xFFF32424),
      onError: Color(0xFFF32424),
      background: Color(0xFFF1F2F3),
      onBackground: Color(0xFFFFFFFF),
      surface: Color(0xFF54B435),
      onSurface: Color(0xFF54B435),
      tertiary: Color.fromARGB(255, 250, 250, 250),
      onTertiary: Color(0xffd9fdd3),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xfff0f2f5),
    ),
    // textTheme: TextTheme(headline1: ),
    dividerColor: const Color.fromARGB(255, 185, 181, 181),
    secondaryHeaderColor: const Color.fromARGB(255, 39, 154, 192),
    tabBarTheme: const TabBarTheme(
      labelColor: Color(0xff667781),
      unselectedLabelColor: Color.fromARGB(255, 17, 27, 33),
    ),
    textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(
          fontSize: 13.0,
        ),
        bodyMedium: TextStyle(
          fontSize: 14.0,
        )),
  );

  static final _darkTheme = ThemeData(
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.black,
    ),
    primaryColor: Colors.yellow,
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xff202c33),
    ),
    dividerColor: const Color(0xff202c33),
    cardColor: const Color.fromARGB(255, 17, 27, 33),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF202020),
      onPrimary: Color(0xFF2a3942),
      secondary: Color(0xff202c33),
      onSecondary: Color.fromARGB(255, 17, 27, 33),
      error: Color(0xFFF32424),
      onError: Color(0xFFF32424),
      background: Color(0xFFF1F2F3),
      onBackground: Color(0xFFFFFFFF),
      surface: Color(0xFF54B435),
      onSurface: Color(0xFF54B435),
      tertiary: Color(0xff202c33),
      onTertiary: Color(0xff005c4b),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xffaebac1),
    ),
    secondaryHeaderColor: const Color.fromARGB(255, 39, 154, 192),
    tabBarTheme: const TabBarTheme(
      labelColor: Color(0xff8696a0),
      unselectedLabelColor: Color.fromARGB(255, 233, 237, 239),
    ),
    textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
          color: Color.fromARGB(221, 233, 237, 239),
        ),
        titleMedium: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(221, 233, 237, 239),
        ),
        titleSmall: TextStyle(
          fontSize: 13.0,
          color: Color.fromARGB(221, 209, 215, 219),
        ),
        bodyMedium: TextStyle(fontSize: 14.0, color: Color(0xff667781))),
  );

  /// Toggles the current brightness between light and dark.
  void toggleTheme() {
    emit(state.brightness == Brightness.dark ? _lightTheme : _darkTheme);
  }
}
