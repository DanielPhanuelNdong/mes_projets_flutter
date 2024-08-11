import 'package:demo_bloc/services/features/taches/presentation/bloc/taches_bloc.dart';
import 'package:demo_bloc/services/features/taches/presentation/pages/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<String> listTaches = [];
    return MultiBlocProvider(
      providers: [
        BlocProvider<TachesBloc>(lazy: false, create: (context) => TachesBloc(listTaches)..add(Lancement())),
        // BlocProvider<TachesBloc>(create: (context) => TachesBloc()..add(Supprimer_Taches(tache: [])),),
        // BlocProvider<TachesBloc>(create: (context) => TachesBloc()..add(Suppression_total(),))
      ],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Page_taches(),
    )
      );
  }
}
