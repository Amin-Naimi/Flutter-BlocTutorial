part of 'counter_bloc.dart'; //pour l'importation

@immutable //tous les attributes sont final
sealed class CounterEvent {}
// on a 3 évenements:

class IncreamentEvent extends CounterEvent{}

class DecreamentEvent extends CounterEvent{}

class ResetEvent extends CounterEvent{}