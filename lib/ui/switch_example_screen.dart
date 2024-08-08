// import 'package:bloc_app/bloc/slider/slider_bloc.dart';
// import 'package:bloc_app/bloc/slider/slider_event.dart';
// import 'package:bloc_app/bloc/slider/slider_state.dart';
// import 'package:bloc_app/bloc/switch/switch_bloc.dart';
// import 'package:bloc_app/bloc/switch/switch_event.dart';
// import 'package:bloc_app/bloc/switch/switch_state.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class ExampleTwo extends StatelessWidget {
//   const ExampleTwo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Example Two'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text('Notifications'),
//                 BlocBuilder<SwitchBloc, SwitchState>(
//                   builder: (context, state) {
//                     return Switch(
//                       value: state.value,
//                       onChanged: (newValue) {
//                         context
//                             .read<SwitchBloc>()
//                             .add(enableordiableNotifications());
//                       },
//                     );
//                   },
//                 ),
//               ],
//             ),
//             const SizedBox(height: 30),
//             BlocBuilder<SliderBloc, SliderState>(
//               builder: (context, state) {

//                 return Container(
//                   height: 200,
//                   color: Colors.red.withOpacity(state.slidingValue),
//                 );
//               },
//             ),
//             const SizedBox(height: 50),
//             BlocBuilder<SliderBloc, SliderState>(
//               builder: (context, state) {
//                 return Slider(
//                   value: state.slidingValue,
//                   onChanged: (newValue) {
//                     print(newValue);
//                     context.read<SliderBloc>().add(OnSliding(newValue));
//                   },
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:bloc_app/bloc/slider/slider_bloc.dart';
import 'package:bloc_app/bloc/slider/slider_event.dart';
import 'package:bloc_app/bloc/slider/slider_state.dart';
import 'package:bloc_app/bloc/switch/switch_bloc.dart';
import 'package:bloc_app/bloc/switch/switch_event.dart';
import 'package:bloc_app/bloc/switch/switch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExampleTwo extends StatelessWidget {
  const ExampleTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Two'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Notifications'),
                BlocBuilder<SwitchBloc, SwitchState>(
                  buildWhen: (previous, current) {
                    // Only rebuild if the value has changed
                    return previous.value != current.value;
                  },
                  builder: (context, state) {
                    return Switch(
                      value: state.value,
                      onChanged: (newValue) {
                        context
                            .read<SwitchBloc>()
                            .add(enableordiableNotifications());
                      },
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 30),
            BlocBuilder<SliderBloc, SliderState>(
              buildWhen: (previous, current) {
                // Only rebuild if the sliding value has changed
                return previous.slidingValue != current.slidingValue;
              },
              builder: (context, state) {
                return Container(
                  height: 200,
                  color: Colors.red.withOpacity(state.slidingValue),
                );
              },
            ),
            const SizedBox(height: 50),
            BlocBuilder<SliderBloc, SliderState>(
              buildWhen: (previous, current) {
                // Only rebuild if the sliding value has changed
                return previous.slidingValue != current.slidingValue;
              },
              builder: (context, state) {
                return Slider(
                  value: state.slidingValue,
                  onChanged: (newValue) {
                    print(newValue);
                    context.read<SliderBloc>().add(OnSliding(newValue));
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
