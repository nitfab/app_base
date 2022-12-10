import 'bloc_event.dart';
import 'bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyBloc extends Bloc<MyEvent, MyState> {
  MyBloc() : super(StateA()) {
    on<EventA>((event, emit) => emit(StateA()));
    on<EventB>((event, emit) => emit(StateB()));
  }
}




