import 'package:equatable/equatable.dart';

abstract class SwitchEvent extends Equatable {
  const SwitchEvent();
  @override
  List<Object> get props => [];
}

//ab dekh events kya hotein hai things which gonna happen with a particular button
// //toh yeh yahan pe notifications ke button se either we can enable notifications or we can diable notifications thus
// the events will be
// class enableNotifications extends SwitchEvent {}

// class disableNotifications extends SwitchEvent {}

//but heere for time being

class enableordiableNotifications extends SwitchEvent {}
