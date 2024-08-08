// import 'package:equatable/equatable.dart';

// abstract class SliderEvent extends Equatable {
//   const SliderEvent();

//   @override
//   List<Object> get props => [];
// }

// class onSliding extends SliderEvent {}

import 'package:equatable/equatable.dart';

abstract class SliderEvent extends Equatable {
  const SliderEvent();

  @override
  List<Object> get props => [];
}

class OnSliding extends SliderEvent {
  final double newValue;

  const OnSliding(this.newValue);

  @override
  List<Object> get props => [newValue];
}
