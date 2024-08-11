import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'taches_event.dart';
part 'taches_state.dart';

class TachesBloc extends Bloc<TachesEvent, TachesInitialState> {
  List<String> listTaches = [];
  TachesBloc(
    this.listTaches,
  ) : super(TachesInitialState(taches: List<String>.from([]))) {
    on<Lancement>((event, emit) {
      emit(TachesInitialState(taches: state.taches.toList()));
    });

    on<Ajouter_Taches>((event, emit) {
      //List<String> tache =[...state.taches,...event.taches] ;

      emit(TachesInitialState(
          taches: List.from(state.taches)..addAll(event.taches)));
    });

    on<Supprimer_Taches>((event, emit) {
      //List<String> tache = event.tache;
      //List<String> tache =[state.taches] ;
      var etat = state.taches.toList();
      etat.removeAt(event.tache);
      //List<String> tache =[...state.taches,...[]];
      //List<String> tache = state.taches ;
      //List.from(state.taches)..remove(event.tache);
      emit(TachesInitialState(
          taches: etat));
    });

    on<Suppression_total>((event, emit) {
      //state.taches.clear();
      List<String> tache = [];
      emit(TachesInitialState(taches: tache.toList()));
    });
  }
}
