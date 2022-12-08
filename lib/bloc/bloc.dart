import 'package:bloc/bloc.dart';

import 'bloc_event.dart';
import 'bloc_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyBloc extends Bloc<MyEvent, MyState> {
  MyBloc() : super(StateA()) {
    on<EventA>((event, emit) => emit(defaultScreen()));
    on<EventB>((event, emit) => emit(initialChatArea()));
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);

  void on(Function(dynamic event, dynamic emit) param0) {}
}

// class MyBloc extends Bloc<MyEvent, MyState> {
//   MyBloc() : super(StateA()) {
//     on<EventA>((event, emit) => emit(StateA()));
//     on<EventB>((event, emit) => emit(StateB()));
//   }

//   @override
//   Stream<MyState> mapEventToState(MyEvent event) {
//     // TODO: implement mapEventToState
//     throw UnimplementedError();
//   }
// }

class defaultScreen extends StatelessWidget {
  const defaultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(child: Text("Click any of the chat")),
    );
  }
}

class initialChatArea extends StatelessWidget {
  const initialChatArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: MediaQuery.of(context as BuildContext).size.width * 0.7348,
        child: const Center(child: Text("Click any of the chat")),
      ),
    );
  }
}
