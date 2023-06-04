part of 'counter_bloc.dart';

class CounterState extends Equatable {
  // define a variable to carry the counter value
  final int counterValue;

  // constructor with default value
  const CounterState({required this.counterValue});

  @override
  List<Object> get props => [counterValue];
}

class CounterInitial extends CounterState {
  CounterInitial() : super(counterValue: 0);
}
