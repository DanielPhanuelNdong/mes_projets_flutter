

import 'package:equatable/equatable.dart';

abstract class TestEvent extends Equatable {
  const TestEvent();

  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable, camel_case_types
class test_event extends TestEvent {
  // ignore: prefer_typing_uninitialized_variables
  var email;
  // ignore: prefer_typing_uninitialized_variables
  var mdp;
  test_event({
    required this.email,
    required this.mdp,
  });

}