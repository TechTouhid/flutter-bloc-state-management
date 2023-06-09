import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

// bloc takes 2 parameter 1 event and 1 state
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    // make our event here
    // here we should tell what event what should do
    on<CounterIncrementEvent>((event, emit) {
      // emit(CounterState(counterValue: state.counterValue + 1));
      // using the IncrementState and DecrementState from counter sate
      emit(IncrementState(state.counterValue + 1));
    });

    on<CounterDecrementEvent>((event, emit) {
      emit(DecrementState(state.counterValue - 1));
    });
  }
}
