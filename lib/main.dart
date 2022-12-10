import 'package:flutter/material.dart';
// import 'bloc/bloc.dart';
import 'app/screens/app.dart';
// ignore: import_of_legacy_library_into_null_safe
// import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyWidget());
}
// void main() => runApp(const MyWidget());

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  static const String title = 'Whatsapp Web';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: const MyApp(),
    );
  }
}
