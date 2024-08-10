// import 'package:bloc/bloc.dart';
// import 'package:bloc_app/bloc/to_do/todo_event.dart';
// import 'package:bloc_app/bloc/to_do/todo_state.dart';

// class toDoBloc extends Bloc<toDoEvent, toDoState> {
//   final List<String> ash = [];
//   toDoBloc() : super(toDoState()) {
//     on<addItem>(_adding);
//     //on<deleteItem>(_removing);
//   }

//   void _adding(addItem event, Emitter<toDoState> emit) {
//     ash.add(event.item);
//     emit(state.copyWith(todosList: List.from(ash)));
//   }
// }

import 'package:bloc/bloc.dart';
import 'package:bloc_app/bloc/to_do/todo_event.dart';
import 'package:bloc_app/bloc/to_do/todo_state.dart';

class ToDoBloc extends Bloc<ToDoEvent, ToDoState> {
  final List<String> _todos = [];

  ToDoBloc() : super(ToDoState()) {
    on<AddItem>(_onAddItem);
    on<DeleteItem>(_onDeleteItem);
  }

  void _onAddItem(AddItem event, Emitter<ToDoState> emit) {
    //list aise hi direct pass nahin hoti thats why went with this
    _todos.add(event.item);
    emit(state.copyWith(todosList: List.from(_todos)));
  }

  void _onDeleteItem(DeleteItem event, Emitter<ToDoState> emit) {
    _todos.removeAt(
        event.index); //add and removeat are two typical functions for list
    emit(state.copyWith(todosList: List.from(_todos)));
  }
}
