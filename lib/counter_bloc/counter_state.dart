part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

// On a deux états:
// -etat initial;
// -etat de changemen de counter
final class CounterInitial extends CounterState {}

class CounterValueChangedState extends CounterState{
  final int counter;
  CounterValueChangedState({required this.counter});
}
