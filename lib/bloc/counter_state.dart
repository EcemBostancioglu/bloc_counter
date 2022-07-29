part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class IncrementCounterState extends CounterState{
  final int value;

  IncrementCounterState(this.value);
}
