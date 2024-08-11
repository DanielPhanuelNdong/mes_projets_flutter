import 'package:demo_bloc/services/features/taches/presentation/bloc/taches_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget ajouter(context){

  TextEditingController controle = TextEditingController() ;
  return BlocBuilder<TachesBloc,TachesInitialState>(
    builder: (context, state) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () => showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        children: [
                          const Text(
                            'Ajouter une tache',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            autofocus: true,
                            controller: controle,
                            decoration: const InputDecoration(
                                label: Text('Entrez le texte de description'),
                                labelStyle: TextStyle(color: Colors.grey)),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    context.read<TachesBloc>().add(Ajouter_Taches(taches: [controle.text]));
                                    controle.text = '';
                                    Navigator.pop(context);
            
                                  },
                                  child: const Text(
                                    'Valider',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'Annuler',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ))
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              
              backgroundColor: Colors.blue,
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),

            //bouton deux suppression totale
            FloatingActionButton(
              onPressed: () {
                context.read<TachesBloc>().add(Suppression_total());
                print(state.taches);
              },
              backgroundColor: Colors.blue,
              child: const Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    },
    );
}