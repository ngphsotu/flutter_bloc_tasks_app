import 'package:equatable/equatable.dart';

import '../bloc_exports.dart';

part 'switch_event.dart';
part 'switch_state.dart';

class SwitchBloc extends HydratedBloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(const SwitchInitial(switchValue: false)) {
    on<SwitchOnEvent>(
      (event, emit) => {emit(const SwitchState(switchValue: true))},
    );
    on<SwitchOffEvent>(
      (event, emit) => {emit(const SwitchState(switchValue: false))},
    );
  }

  @override
  SwitchState? fromJson(Map<String, dynamic> json) {
    // ignore: todo
    // TODO: implement fromJson
    return SwitchState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(SwitchState state) {
    // ignore: todo
    // TODO: implement toJson
    return state.toMap();
  }
}
