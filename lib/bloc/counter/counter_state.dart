part of 'counter_bloc.dart';

// using equatable we can compare two instance without
// using the hash code
class CounterState extends Equatable {
  // define a variable to carry the counter value
  final int counterValue;

  // constructor with default value
  const CounterState({required this.counterValue});

  // in the props we need to use the instance
  @override
  List<Object> get props => [counterValue];
}

class CounterInitial extends CounterState {
  // we have required parameter so we need to provide a value in the super class
  CounterInitial() : super(counterValue: 0);
}

// here we need to separate the state into increment state and decrement state
// so that we can listen when which state is emitted
class IncrementState extends CounterState {
  IncrementState(int increasedValue) : super(counterValue: increasedValue);
}

class DecrementState extends CounterState {
  DecrementState(int decreasedValue) : super(counterValue: decreasedValue);
}
