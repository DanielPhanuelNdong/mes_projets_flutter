part of 'list_ashtag_bloc.dart';

abstract class ListAshtagState extends Equatable {
  const ListAshtagState();  

  @override
  List<Object> get props => [];
}
class ListAshtagInitialState extends ListAshtagState {
  final List<HashtagModels> Hashtag;

  const ListAshtagInitialState({required this.Hashtag});

  @override
  List<Object> get props => [
    Hashtag,
  ];

  List<HashtagModels> get listashtag => [];
}
