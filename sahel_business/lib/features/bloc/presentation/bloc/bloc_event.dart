
import 'package:equatable/equatable.dart';

abstract class BlocEvent extends Equatable {
  const BlocEvent();

  @override
  List<Object> get props => [];
}

//.................................logiue nav_bar........................
// ignore: must_be_immutable, camel_case_types
class nav_bar extends BlocEvent {
  // ignore: prefer_typing_uninitialized_variables
  var element;
  // ignore: prefer_typing_uninitialized_variables
  var boul;
  
  nav_bar({
    required this.element,
    required this.boul,
  });

  @override
  List<Object> get props => [
    element,
    boul
  ];


}
