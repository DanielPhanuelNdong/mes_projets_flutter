import 'package:flutter/material.dart';
import 'package:flutter_application_15/servicess/features/list_ashtag/data/models/index.dart';

class ListHashtagView extends StatefulWidget {
  const ListHashtagView({super.key});

  @override
  State<ListHashtagView> createState() => _ListHashtagViewState();
}

class _ListHashtagViewState extends State<ListHashtagView> {

  List<HashtagModels> listashtag = [];

  @override
  Widget build(BuildContext context) {
    return listashtag.isEmpty ? const Center(child: Text('No Ashtag Launshing'),)
    : ListView.builder(
      itemCount: listashtag.length,
      itemBuilder: (context, index){
      return Dismissible(
        key: Key(index.toString(),),
        onDismissed: (direction){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('$index Dismissed'),
            ),
          );
        },
        background: Container(color: Colors.red,),
        child: Card(
          child: ListTile(title: Text(listashtag[index].name),),
        ),
        );
    });
    // return BlocBuilder<ListAshtagBloc, ListAshtagState>(
    //   builder: (context, state) {
    //     List<HashtagModels> listashtag = [];

    //     if(state is ListAshtagInitialState){
    //       listashtag = state.listashtag;
    //     }
      
    // },);
  }
}