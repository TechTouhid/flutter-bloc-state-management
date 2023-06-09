import 'package:equatable/equatable.dart';
import '../bloc_imports.dart';

part 'counter_event.dart';
part 'counter_state.dart';

// bloc takes 2 parameter 1 event and 1 state
class CounterBloc extends HydratedBloc<CounterEvent, CounterState> {
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

  @override
  CounterState? fromJson(Map<String, dynamic> json) {
    return CounterState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(CounterState state) {
    return state.toMap();
  }
}
