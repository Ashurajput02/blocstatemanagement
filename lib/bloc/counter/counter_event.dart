import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent(); //constructor calling

  @override
  List<Object> get props => [];
}

class IncrementCounter extends CounterEvent {}

class DecrementCounter extends CounterEvent {}
