import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'navigations.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    //Utiliser WidgetsBinding pour appliquer les changements après la construction du widget
    WidgetsBinding.instance.addPostFrameCallback((_) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Color(0xFF007549), // définit la couleur de la barre d'état
        statusBarIconBrightness: Brightness.light, // définit la couleur des icônes de la barre d'état
      ));
    });
    //double screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Sizedboxe
                  const SizedBox(
                    height: 50,
                  ),
                  //entête
                  Image.asset(
                    'images/logoO.png',
                    width: 150,
                    height: 150,
                    ),
            
                  //Sizedboxe
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Connexion',
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
                    'Informations de connexion...',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color:Colors.blue,
                        ),
                  ),
            
                  //Sizedboxe
                  const SizedBox(
                    height: 20,
                  ),
            
                  //Connexion par login
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffixIconColor: Colors.blue,
                        errorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red,)
                            ),
                        errorStyle: const TextStyle(color: Colors.red,),
                        labelStyle: Theme.of(context).textTheme.bodyMedium,
                        focusColor: const Color(0xFF007549),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.blue,
                        )
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.blue,
                        )
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)
                        ),
                        labelText: 'Login',
                      ),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$')
                                .hasMatch(value)) {
                          return 'Login incorrect';
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
                      cursorColor: Theme.of(context).primaryColor,
                      keyboardType: TextInputType.visiblePassword,
                      //obscureText: state.obscure,
                      decoration: InputDecoration(
                        suffixIconColor: Colors.blue,
                        errorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red,)
                            ),
                        errorStyle: const TextStyle(color: Colors.red,),
                        labelStyle: Theme.of(context).textTheme.bodyMedium,
                        focusColor: Theme.of(context).primaryColor,
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.blue,
                        )
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.blue,
                        )
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)
                        ),
                        labelText: 'Mot de Passe',
                        suffixIcon: IconButton(
                          onPressed: () {
                            //context.read<BlocBloc>().add(Visibility_passe(vise: state.vise, obscure: state.obscure));
                          },
                          icon: const Icon(Icons.visibility),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z 0-9]{4,8}$').hasMatch(value)) {
                          return 'Mot de passe incorrect';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
            
                  //Sizedboxe
                  SizedBox(
                    height: 5.h,
                  ),
            
                  //bouton de connexion
                  InkWell(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                       Get.offAll(() => const Navigations(), transition: Transition.downToUp);
                      }
                    },
                    child: Container(
                      height: 6.h,
                      width: 75.w,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Color(0xFF007549),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              // Color.fromARGB(255, 33, 168, 116),
                              Color(0xFF007549),
                              Color.fromARGB(255, 33, 168, 116),
                            ]
                            )
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Color(0xFF007549),
                          //     blurRadius: 2,
                          //     offset: Offset(0, 4),
                          //     spreadRadius: 1,
                          //   )
                          // ]
                          ),
                      child: Text(
                        'SE CONNECTER',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13.sp),
                      ),
                    ),
                  ),
            
            
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}