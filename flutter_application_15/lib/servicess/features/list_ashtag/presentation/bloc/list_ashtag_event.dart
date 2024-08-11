part of 'list_ashtag_bloc.dart';

abstract class ListAshtagEvent extends Equatable {
  const ListAshtagEvent();

  @override
  List<Object> get props => [];
}

class InitialListAshtagEvent extends ListAshtagEvent{

}
