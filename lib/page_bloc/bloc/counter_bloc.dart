import 'dart:developer' as developer;

import 'package:bloc/bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterStateInitial()) {
    on<CounterIncrement>(_increment);
    on<CounterDecrement>(_decrement);
  }

  void _increment(CounterIncrement event, Emitter<CounterState> emit) {
    developer.log('increment', name: '_increment');
    emit(CounterStateData(state.counter + 1));
  }

  void _decrement(CounterDecrement event, Emitter<CounterState> emit) {
    developer.log('decrement', name: '_decrement');
    emit(CounterStateData(state.counter - 1));
  }
}
