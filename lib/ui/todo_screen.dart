// import 'package:bloc_app/bloc/to_do/todo_bloc.dart';
// import 'package:bloc_app/bloc/to_do/todo_event.dart';
// import 'package:bloc_app/bloc/to_do/todo_state.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class ToDoScreen extends StatefulWidget {
//   const ToDoScreen({Key? key}) : super(key: key);

//   @override
//   _ToDoScreenState createState() => _ToDoScreenState();
// }

// class _ToDoScreenState extends State<ToDoScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Todo App'),
//       ),
//       body: BlocBuilder<toDoBloc, toDoState>(builder: (context, state) {
//         if (state.todosList.isEmpty)
//           return const Center(child: Text("Nothing to Do"));
//         else if (state.todosList.isNotEmpty) {
//           return ListView.builder(
//             itemCount: 10, // Hardcoded for now, later this can be dynamic
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text(index.toString()), // Displays the index
//                 trailing: IconButton(
//                   icon: const Icon(Icons.delete),
//                   onPressed: () {
//                     // Handle delete action here
//                   },
//                 ),
//               );
//             },
//           );
//         } else {
//           return SizedBox();
//         }
//       }),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // Handle adding new task here
//           //for (int i = 1; i <= 10; i++)
//           context.read<toDoBloc>().add(addItem(item: "hello ashbabe"));
//           //lekin yadi mein isko empty hi chodunga toh i wont be able to pass any data to it
//           //so jo bhi to do mein add karna chahta hooon usko mein isme pass karunga hi for obvious reasons
//         },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

import 'package:bloc_app/bloc/to_do/todo_bloc.dart';
import 'package:bloc_app/bloc/to_do/todo_event.dart';
import 'package:bloc_app/bloc/to_do/todo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToDoScreen extends StatefulWidget {
  const ToDoScreen({Key? key}) : super(key: key);

  @override
  _ToDoScreenState createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
      ),
      body: BlocBuilder<ToDoBloc, ToDoState>(
        builder: (context, state) {
          if (state.todosList.isEmpty) {
            return const Center(child: Text("Nothing to Do"));
          }

          return ListView.builder(
            itemCount: state.todosList.length, // Use dynamic item count
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.todosList[index]), // Display the actual task
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    context.read<ToDoBloc>().add(DeleteItem(index: index));
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<ToDoBloc>().add(AddItem(item: 'Task ${DateTime.now()}'));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
