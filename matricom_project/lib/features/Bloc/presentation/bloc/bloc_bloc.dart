import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:projet_matricom/index.dart';


//.................................logique nav_bar transactions........................

class BlocBloc1 extends Bloc<nav_bar, nav_bar_state> {
  BlocBloc1() : super(nav_bar_state(element: const Acceuil_transactions(), bouton: floating_Abonnement_agent())) {
    on<nav_bar>((event, emit) {
      // ignore: prefer_typing_uninitialized_variables
      var elmt1;
      // ignore: prefer_typing_uninitialized_variables
      var elmt2;
      
      if(event.element == 0){
          elmt1 = const Acceuil_transactions() ;
          elmt2 = floating_Abonnement_agent();
      }
      if(event.element == 1){
        elmt1 = const Reglages_transactions() ;
        elmt2 = const SizedBox();
      }

      emit(nav_bar_state(element: elmt1, bouton: elmt2));
    });
  }
}

//.................................logique nav_bar Acces internet........................

class BlocBloc2 extends Bloc<nav_bar2, nav_bar_state2> {
  BlocBloc2() : super(nav_bar_state2(element: const Acceuil_acces_internet())) {
    on<nav_bar2>((event, emit) {
      // ignore: prefer_typing_uninitialized_variables
      var elmt1;
      // ignore: prefer_typing_uninitialized_variables
      //var elmt2;
      
      if(event.element == 0){
          elmt1 = const Acceuil_acces_internet() ;
      }
      if(event.element == 1){
        elmt1 = const Connexions_acces_internet() ;
      }
      if(event.element == 2){
        elmt1 = const Reglages_acces_internet() ;
      }

      emit(nav_bar_state2(element: elmt1));
    });
  }
}