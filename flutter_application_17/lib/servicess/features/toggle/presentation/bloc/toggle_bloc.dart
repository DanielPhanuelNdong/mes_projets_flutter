import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'toggle_event.dart';
part 'toggle_state.dart';

class ToggleBloc extends Bloc<ToggleEvent, ToggleState> {
  ToggleBloc() : super(const ToggleInitialState(isOn: true)) {
    on<ToggleSubmitEvent>((event, emit) {

      emit(ToggleInitialState(isOn: !(state as ToggleInitialState).isOn));

    });
  }
}
