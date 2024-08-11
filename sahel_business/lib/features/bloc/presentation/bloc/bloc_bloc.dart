
import 'package:bloc/bloc.dart';
import 'package:sahel_business/index.dart';


//.................................logiue nav_bar........................

class BlocBloc1 extends Bloc<nav_bar, nav_bar_state> {
  BlocBloc1() : super(nav_bar_state(element: const Acceuil_agent(), boul: true, appbar: appbar_Acceuil_agent())) {
    on<nav_bar>((event, emit) {
      // ignore: prefer_typing_uninitialized_variables
      var elmt1;
      // ignore: prefer_typing_uninitialized_variables
      var elmt2;
      
      if(event.element == 0){
        if(event.boul){
          elmt1 = const Acceuil_agent() ;
          elmt2 = appbar_Acceuil_agent();
        }else{
          elmt1 = const Acceuil_marchant() ;
          elmt2 = appbar_Acceuil_marchant();
        }
      }
      if(event.element == 1){
        elmt1 = const Historiques() ;
        elmt2 = appbar_historiques();
      }
      if(event.element == 2){
        elmt1 = const Reglages() ;
        elmt2 = appbar_reglages();
      }

      emit(nav_bar_state(element: elmt1, boul: event.boul, appbar: elmt2));
    });
  }
}
