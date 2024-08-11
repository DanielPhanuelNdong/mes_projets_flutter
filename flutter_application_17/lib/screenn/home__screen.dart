import 'package:flutter/material.dart';
import 'package:flutter_application_17/servicess/features/toggle/presentation/bloc/toggle_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: BlocBuilder<ToggleBloc, ToggleState>(
            builder: (context, state) {
              return TextFormField(
              obscureText: (state as ToggleInitialState).isOn,
            decoration: InputDecoration(
              label: const Text('Entrez votre mot de passe '),
              labelStyle: const TextStyle(color: Colors.grey),
              suffixIcon: IconButton(
                onPressed: (){
                  return context.read<ToggleBloc>().add(ToggleSubmitEvent());
                },
                icon: (state).isOn ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility))
            ),
            );
            }
              )
          )
        ],
      ),
    );
  }
}