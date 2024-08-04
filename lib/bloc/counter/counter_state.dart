import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
//kya change hori hai info counter ki value right

  int counter;
  CounterState({this.counter = 0});

  CounterState copyWith({int? counter}) {
    //yeh ? darshaata hai ki counter ki value null kabhi bhi nahin hogi
    return CounterState(
        counter: counter ??
            this.counter); //yadi counter ki value nahin aa paati hain kuch kaaran vash toh uski initial value hi pass ho jaayegi
  }

  @override
  // TODO: implement props
  List<Object?> get props => [counter];
}
