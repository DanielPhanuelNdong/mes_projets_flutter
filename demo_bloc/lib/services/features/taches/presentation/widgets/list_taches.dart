import 'package:demo_bloc/services/features/taches/presentation/bloc/taches_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: non_constant_identifier_names
Widget list_taches(index) {
  //index = index + 1;
  List<String> listTaches = [];
  return BlocBuilder<TachesBloc, TachesInitialState>(
    
    builder: (context, state) {
      context.read<TachesBloc>().add(Lancement());
      listTaches = state.taches.toList();
      print(listTaches.isEmpty);
      return listTaches == [] ? const Center(child: Text('Liste des taches vide', style: TextStyle(color: Colors.black),),)
      : Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Card(
          color: const Color.fromARGB(255, 3, 57, 104).withOpacity(.7),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tache $index ',
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      //'description description description description 1',
                      listTaches[index],
                      style: const TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 15,
                left: 330,
                child: IconButton(
                    onPressed: () {
                      //listTaches.removeAt(index);
                      context.read<TachesBloc>().add(Supprimer_Taches(tache: index));
                      print(state.taches);
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                    )),
              )
            ],
          ),
        ),
      );
    },
  );
}
