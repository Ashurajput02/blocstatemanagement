// import 'package:equatable/equatable.dart';

// abstract class toDoEvent extends Equatable {
//   const toDoEvent();
//   @override
//   List<Object> get props => [];
// }

// class addItem extends toDoEvent {
//   final String item;
//   addItem({required this.item});
//   @override
//   List<Object> get props => [item];
// }

// class deleteItem extends toDoEvent {
//   @override
//   List<Object> get props => [];
// }

import 'package:equatable/equatable.dart';

abstract class ToDoEvent extends Equatable {
  const ToDoEvent();

  @override
  List<Object> get props => [];
}

class AddItem extends ToDoEvent {
  //add item trigger hone par mujhe uss event se data mil raha hai
  final String item;

  const AddItem({required this.item});

  @override
  List<Object> get props => [item];
}

class DeleteItem extends ToDoEvent {
  final int
      index; //mujhe kaise pata lagega ki konsa index /item delete karna hai

  const DeleteItem({required this.index});

  @override
  List<Object> get props => [index];
}
