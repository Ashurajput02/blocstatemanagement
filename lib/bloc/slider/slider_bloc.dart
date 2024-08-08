// import 'package:bloc/bloc.dart';
// import 'package:bloc_app/bloc/slider/slider_event.dart';
// import 'package:bloc_app/bloc/slider/slider_state.dart';

// class SliderBloc extends Bloc<SliderEvent, SliderState> {
//   SliderBloc() : super(SliderState()) {
//     on<onSliding>(_incrementordecrement);
//   }

// void _incrementordecrement(
//       onSliding event, Emitter<SliderState> emit) {
//     emit(state.copyWith(:state.slidingValue));
//   }
// }

import 'package:bloc/bloc.dart';
import 'package:bloc_app/bloc/slider/slider_event.dart';
import 'package:bloc_app/bloc/slider/slider_state.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState> {
  SliderBloc() : super(SliderState()) {
    on<OnSliding>(_incrementOrDecrement);
  }

  void _incrementOrDecrement(OnSliding event, Emitter<SliderState> emit) {
    emit(state.copyWith(slidingValue: event.newValue));
  }
}
