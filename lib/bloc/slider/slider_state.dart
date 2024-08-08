// import 'package:equatable/equatable.dart';

// class SliderState extends Equatable {
//   final double slidingValue;
//   SliderState({this.slidingValue = .4});

//   SliderState copyWith(double? slidingValue) {
//     return SliderState(slidingValue: slidingValue ?? this.slidingValue);
//   }

//   @override
//   // TODO: implement props
//   List<Object?> get props => [slidingValue];
// }

import 'package:equatable/equatable.dart';

class SliderState extends Equatable {
  final double slidingValue;

  SliderState({this.slidingValue = 0.4});

  SliderState copyWith({double? slidingValue}) {
    return SliderState(slidingValue: slidingValue ?? this.slidingValue);
  }

  @override
  List<Object?> get props => [slidingValue];
}
