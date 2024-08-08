// import 'package:equatable/equatable.dart';

// abstract class CounterEvent extends Equatable {
//   const CounterEvent(); //constructor calling

//   @override
//   List<Object> get props => [];
// }

// class IncrementCounter extends CounterEvent {}

// class DecrementCounter extends CounterEvent {}

import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent(); //constructor

  @override
  List<Object> get props =>
      []; //chooki iss class mein koi bhi elements nahin hai so isliye meine isme blank pass kiya h
}

class IncrementCounter extends CounterEvent {}

class DecrementCounter extends CounterEvent {}
