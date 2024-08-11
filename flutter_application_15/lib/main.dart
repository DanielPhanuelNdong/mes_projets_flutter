import 'package:flutter/material.dart';
import 'package:flutter_application_15/sceens/home_screen.dart';
import 'package:flutter_application_15/servicess/features/list_ashtag/presentation/bloc/list_ashtag_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<Map <String, dynamic>> listHashtag = [
    {"nom": "#flutter"},{'nom': '#dart'}, {'nom': '#Java'}, {'nom': '#JavaScript'}
  ];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ListAshtagBloc>(
          lazy: true,
          create: (context) => ListAshtagBloc(listHashtag)..add(InitialListAshtagEvent()),
          )
      ],
      child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Insta Tags',
      home: HomeScreen(),
    ));
  }
}
