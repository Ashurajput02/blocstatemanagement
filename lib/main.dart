// // import 'package:bloc_app/bloc/counter/counter_bloc.dart';
// // import 'package:bloc_app/ui/counter_screen.dart';
// // import 'package:equatable/equatable.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return BlocProvider(
// //       create: (_) =>
// //           CounterBloc(), //isse kya hoga yeh apna bloc jo hai yeh widget tree ke top par aa jayega
// //       child: MaterialApp(
// //         title: 'Flutter Demo',
// //         theme: ThemeData(
// //           // This is the theme of your application.
// //           //
// //           // TRY THIS: Try running your application with "flutter run". You'll see
// //           // the application has a purple toolbar. Then, without quitting the app,
// //           // try changing the seedColor in the colorScheme below to Colors.green
// //           // and then invoke "hot reload" (save your changes or press the "hot
// //           // reload" button in a Flutter-supported IDE, or press "r" if you used
// //           // the command line to start the app).
// //           //
// //           // Notice that the counter didn't reset back to zero; the application
// //           // state is not lost during the reload. To reset the state, use hot
// //           // restart instead.
// //           //
// //           // This works for code too, not just values: Most code changes can be
// //           // tested with just a hot reload.
// //           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
// //           useMaterial3: true,
// //         ),
// //         home: CounterScreen(),
// //       ),
// //     );
// //   }
// // }

// import 'package:bloc_app/bloc/counter/counter_bloc.dart';
// import 'package:bloc_app/bloc/switch/switch_bloc.dart';
// import 'package:bloc_app/ui/counter_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'ui/switch_example_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) => SwitchBloc(),
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         home: ExampleTwo(),
//       ),
//     );
//   }
// }

import 'package:bloc_app/ui/switch_example_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_app/bloc/slider/slider_bloc.dart';
import 'package:bloc_app/bloc/slider/slider_event.dart';
import 'package:bloc_app/bloc/slider/slider_state.dart';
import 'package:bloc_app/bloc/switch/switch_bloc.dart';
import 'package:bloc_app/bloc/switch/switch_event.dart';
import 'package:bloc_app/bloc/switch/switch_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => SwitchBloc()),
        BlocProvider(create: (_) => SliderBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ExampleTwo(),
      ),
    );
  }
}
