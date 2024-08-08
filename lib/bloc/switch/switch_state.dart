import 'package:equatable/equatable.dart';

class SwitchState extends Equatable {
  // final int value;
  //chahe toh bool bhi bana sakte hain
  final bool value;
  const SwitchState({this.value = false});

  SwitchState copyWith({bool? value}) {
    return SwitchState(
      value: value ?? this.value,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [value];
}
