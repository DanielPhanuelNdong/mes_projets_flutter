part of 'taches_bloc.dart';

abstract class TachesState extends Equatable {
  const TachesState();

  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable
class TachesInitial extends TachesState {
  List<String> taches =[] ;

  TachesInitial({
    required this.taches,
  });

  @override
  List<Object> get props => [
    taches
  ];
  
}

// ignore: must_be_immutable
class TachesInitialState extends TachesState {
  List<String> taches =[] ;

  TachesInitialState({
    required this.taches,
  });

  @override
  List<Object> get props => [
    taches
  ];
  
}
