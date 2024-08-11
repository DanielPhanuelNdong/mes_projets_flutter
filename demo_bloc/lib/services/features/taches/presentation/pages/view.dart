import 'package:demo_bloc/services/features/taches/presentation/bloc/taches_bloc.dart';
import 'package:demo_bloc/services/features/taches/presentation/widgets/ajouter.dart';
import 'package:demo_bloc/services/features/taches/presentation/widgets/list_taches.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Page_taches extends StatelessWidget {
  const Page_taches({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Liste des tâches',
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 2,
      ),

      //body
      body: BlocBuilder<TachesBloc,TachesInitialState>(
        builder: (context, state) {
          return ListView.builder(
        itemCount: state.taches.length,
        itemBuilder: (context, index) {
          return list_taches(index);
        },
        );
        },
        ),


        //bouton add
      floatingActionButton: ajouter(context),
    );
  }
}
