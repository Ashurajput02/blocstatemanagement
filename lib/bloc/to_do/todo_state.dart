// import 'package:equatable/equatable.dart';

// class toDoState extends Equatable {

//   //list badal rhi hai

//   //final int itemCount;
//   final List<String> todosList;
//   toDoState({this.todosList = const []});
//   @override
//   List<Object> get props => [todosList];
//   //copywith aapki class ka ek naya instance create kr deta h

//   toDoState copyWith({List<String>? todosList}) {
//     return toDoState(todosList: todosList ?? this.todosList);
//   }
// }

import 'package:equatable/equatable.dart';

class ToDoState extends Equatable {
  //   //ruk idhar teri jo cheez change ho rhi hain voh ek list hai so item count jo tu soch rha hai voh nahi balki ui mei
  final List<String> todosList;

  const ToDoState(
      {this.todosList =
          const []}); //intinally meri todo list empty hai and thats why it is constant

  @override
  List<Object> get props => [todosList];

  ToDoState copyWith({List<String>? todosList}) {
    return ToDoState(
      todosList: todosList ?? this.todosList,
    );
  }
}
