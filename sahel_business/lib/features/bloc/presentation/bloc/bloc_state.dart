
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class BlocState extends Equatable {
  const BlocState();

  @override
  List<Object> get props => [];
}

//.................................logiue nav_bar........................
// ignore: must_be_immutable, camel_case_types
class nav_bar_state extends BlocState {
  // ignore: prefer_typing_uninitialized_variables
  var element;
  // ignore: prefer_typing_uninitialized_variables
  var boul;
  PreferredSizeWidget appbar;
  nav_bar_state({
    required this.element,
    required this.boul,
    required this.appbar,
  });

  @override
  List<Object> get props => [
    element,
    boul,
    appbar
  ];
}
