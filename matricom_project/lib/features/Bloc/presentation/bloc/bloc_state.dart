
import 'package:equatable/equatable.dart';

abstract class BlocState extends Equatable {
  const BlocState();  

  @override
  List<Object> get props => [];
}
class BlocInitial extends BlocState {}


//.................................logiue nav_bar transactions........................
// ignore: must_be_immutable, camel_case_types
class nav_bar_state extends BlocState {
  // ignore: prefer_typing_uninitialized_variables
  var element;
  // ignore: prefer_typing_uninitialized_variables
  var bouton;

  nav_bar_state({
    required this.element,
    required this.bouton,
  });

  @override
  List<Object> get props => [
    element,
    bouton
  ];
}

//.................................logiue nav_bar Acces internet........................
// ignore: must_be_immutable, camel_case_types
class nav_bar_state2 extends BlocState {
  // ignore: prefer_typing_uninitialized_variables
  var element;

  nav_bar_state2({
    required this.element
  });

  @override
  List<Object> get props => [
    element
  ];
}
