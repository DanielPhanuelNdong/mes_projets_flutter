import 'package:flutter/material.dart';

import 'sql_d_b.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SQLdb sqldb = SQLdb() ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            int rep = await sqldb.Insert_Value('INSERT INTO "films" (titre, duree) VALUES ("Maraton", "120")') ;
            print('${rep}');
          }, 
          child: const Text('Ajouter')
          ),
      ),
    );
  }
}