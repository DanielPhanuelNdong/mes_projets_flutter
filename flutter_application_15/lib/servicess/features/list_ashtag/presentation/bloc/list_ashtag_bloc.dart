import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_15/servicess/features/list_ashtag/data/models/hashtag_models.dart';

part 'list_ashtag_event.dart';
part 'list_ashtag_state.dart';

class ListAshtagBloc extends Bloc<ListAshtagEvent, ListAshtagState> {
  final List<Map <String, dynamic>> listHashtags;
  ListAshtagBloc(this.listHashtags) : super(ListAshtagInitialState(Hashtag: List<HashtagModels>.from([]))) {
    on<InitialListAshtagEvent>((event, emit) {

      final List<HashtagModels> listHashtagModels = listHashtags
      .map((e) => HashtagModels(name: e['name'])).toList();

      emit(ListAshtagInitialState(Hashtag: listHashtagModels));
      
    });
  }
}
