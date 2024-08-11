//import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:learn_api/accueil.dart';
import 'package:learn_api/features/index.dart';
//import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final formKey = GlobalKey<FormState>();
  TextEditingController controle1 = TextEditingController();
  TextEditingController controle2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Sizedboxe
                const SizedBox(
                  height: 150,
                ),
                const Text(
                  'Bienvenue',
                  style: TextStyle(
                    color: Color(0xFF007549),
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    //color: Color.fromARGB(255, 0, 0, 0)
                  ),
                ),

                //Sizedboxe
                const SizedBox(
                  height: 18,
                ),

                const Text(
                  'veuillez vous connecter',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFc75c0c),
                  ),
                ),

                //Sizedboxe
                const SizedBox(
                  height: 20,
                ),

                //Connexion par email
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: controle1,
                    decoration: InputDecoration(
                      suffixIconColor: const Color(0xFFc75c0c),
                      errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xFFc75c0c),
                      )),
                      errorStyle: const TextStyle(
                        color: Color(0xFFc75c0c),
                      ),
                      labelStyle: Theme.of(context).textTheme.bodyMedium,
                      focusColor: const Color(0xFF007549),
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                      )),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                      )),
                      labelText: 'Entrez votre adresse email',
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[\w-\.]+@([\w-]+\.)[\w-]{2,4}$')
                              .hasMatch(value)) {
                        return 'Entrer une email correct';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),

                //Sizedboxe
                const SizedBox(
                  height: 30,
                ),

                //authentification par mot de passe
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: controle2,
                    cursorColor: Theme.of(context).primaryColor,
                    keyboardType: TextInputType.visiblePassword,
                    //obscureText: state.obscure,
                    decoration: InputDecoration(
                      suffixIconColor: const Color(0xFFc75c0c),
                      errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xFFc75c0c),
                      )),
                      errorStyle: const TextStyle(
                        color: Color(0xFFc75c0c),
                      ),
                      labelStyle: Theme.of(context).textTheme.bodyMedium,
                      focusColor: Theme.of(context).primaryColor,
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                      )),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Theme.of(context).primaryColor,
                      )),
                      labelText: 'Entrez votre mot de Passe',
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z 0-9]{4,8}$').hasMatch(value)) {
                        return 'Entrer un mot de passe correct';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),

                //Sizedboxe
                const SizedBox(
                  height: 15,
                ),

                //Mot de passe oublié
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Mot de passe oublié ?',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFc75c0c),
                          ),
                        )),
                  ],
                ),

                //Sizedboxe
                const SizedBox(
                  height: 15,
                ),

                //bouton de connexion
                BlocBuilder<TestBloc, TestState>(
                  builder: (context, state) {
                    return InkWell(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      context.read<TestBloc>().add(test_event(
                          email: controle1.text, mdp: controle2.text));

                          if(state is leoding_test_state){
                            const LinearProgressIndicator();
                          }else if(state is empty_test_state){
                            Get.defaultDialog();
                          }else if(state is leaded_test_state){
                            Get.offAll(() => const accuiel());

                          }else {
                            Get.defaultDialog(
                              title: 'requete echouée'
                            );
                          }
                    }
                  },
                  child: Container(
                    height: 42,
                    width: screen_width * .88,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Color(0xFF007549),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF007549),
                            blurRadius: 2,
                            offset: Offset(0, 4),
                            spreadRadius: 1,
                          )
                        ]),
                    child: const Text(
                      'Connexion',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                );
                  },
                  ),
                //Sizedboxe
                const SizedBox(
                  height: 10,
                ),

                //s'inscrire
                Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Vous n\'avez pas de compte ?',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'S\'inscrire',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFc75c0c),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
