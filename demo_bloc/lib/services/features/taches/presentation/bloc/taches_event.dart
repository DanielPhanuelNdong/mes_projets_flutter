part of 'taches_bloc.dart';

abstract class TachesEvent extends Equatable {
  const TachesEvent();

  @override
  List<Object> get props => [];
}

class Lancement extends TachesEvent{}

// ignore: must_be_immutable
class Ajouter_Taches extends TachesEvent {
  List<String> taches =[] ;

  Ajouter_Taches({
    required this.taches,
  });

  @override
  List<Object> get props => [
    taches
  ];
}

// ignore: must_be_immutable
class Supprimer_Taches extends TachesEvent {

  int tache;

  Supprimer_Taches({
    required this.tache,
  });

  @override
  List<Object> get props => [
    tache
  ];

}

class Suppression_total extends TachesEvent{}
