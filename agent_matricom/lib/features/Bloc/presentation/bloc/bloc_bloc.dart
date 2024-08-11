import 'package:agent_matricom/index.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

//.................................logiue nav_bar........................

class BlocBloc1 extends Bloc<nav_bar, nav_bar_state> {
  BlocBloc1() : super(nav_bar_state(element: const Acceuil(), bouton: const SizedBox())) {
    on<nav_bar>((event, emit) {
      // ignore: prefer_typing_uninitialized_variables
      var elmt1;
      // ignore: prefer_typing_uninitialized_variables
      var elmt2;
      
      if(event.element == 0){
          elmt1 = const Acceuil() ;
          elmt2 = const SizedBox();
      }
      if(event.element == 1){
        elmt1 = const Abonnement() ;
        elmt2 = floating_Abonnement_agent();
      }
      // if(event.element == 2){
      //   elmt1 = const Reglages() ;
      //   elmt2 = appbar_reglages();
      // }

      emit(nav_bar_state(element: elmt1, bouton: elmt2));
    });
  }
}

