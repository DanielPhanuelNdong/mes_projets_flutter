import 'package:bloc/bloc.dart';
import 'package:learn_api/features/index.dart';
//import 'package:equatable/equatable.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  //Repository repository = Repository();
  depot? depo;

  TestBloc() : super(initial_test_State()) {
    on<test_event>((event, emit) async {
      emit(leoding_test_state());
      Map<String, dynamic> collection = {
        'codeserv': 'seconnecter',
        'profil': 'client',
        'login': event.email,
        'mdp': event.mdp,
        'term': 'Lenovo android',
        'adrip': '10.0.0.1'
      };
      depo = depot();
      await depo!.log(collection);

      try {
        emit(leaded_test_state());
      } catch (e) {
        print(e);
        emit(failled_test_state());
      }
    });
  }
}
