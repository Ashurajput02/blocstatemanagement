import 'package:bloc/bloc.dart';
import 'package:bloc_app/bloc/switch/switch_event.dart';
import 'package:bloc_app/bloc/switch/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(SwitchState()) {
    on<enableordiableNotifications>(_enableOrDisable);
  }

  void _enableOrDisable(
      enableordiableNotifications event, Emitter<SwitchState> emit) {
    emit(state.copyWith(value: !state.value));
  }
}
