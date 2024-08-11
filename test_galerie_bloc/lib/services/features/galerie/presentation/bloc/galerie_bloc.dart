import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'galerie_event.dart';
part 'galerie_state.dart';

class GalerieBloc extends Bloc<GalerieEvent, GalerieState> {
  GalerieBloc() : super(GalerieInitial()) {
    on<GalerieEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
