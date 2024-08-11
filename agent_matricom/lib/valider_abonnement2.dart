import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'valider_abonnement3.dart';

class Valider_abonnement2 extends StatefulWidget {
  const Valider_abonnement2({super.key});

  @override
  State<Valider_abonnement2> createState() => _Valider_abonnement2State();
}

class _Valider_abonnement2State extends State<Valider_abonnement2> {
  final _formKey = GlobalKey<FormState>();
  //String? _selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
                    key: _formKey,
                    child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue
                      ),
                        borderRadius: const BorderRadius.all(Radius.circular(50)),
                        color: Colors.transparent
                        ),
                  ),
                  SizedBox(
                    width: 1.3.w,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.blue),
                  ),
                  SizedBox(
                    width: 1.3.w,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue
                      ),
                        borderRadius: const BorderRadius.all(Radius.circular(50)),
                        color: Colors.transparent
                        ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Abonnement',
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF007549),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'Informations Personnelles',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF007549),
                ),
              ),
              SizedBox(
                height: 1.5.h,
              ),
              //Numero de pièce d'identité
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
                  keyboardType: TextInputType.number,
                  //obscureText: state.obscure,
                  decoration: InputDecoration(
                    suffixIconColor: Colors.blue,
                    errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.red,
                    )),
                    errorStyle: const TextStyle(
                      color: Colors.red,
                    ),
                    labelStyle: Theme.of(context).textTheme.bodyMedium,
                    focusColor: Theme.of(context).primaryColor,
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue,
                    )),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue,
                    )),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    labelText: 'Numéro de pièce d\'identité',
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[0-9]{4,8}$').hasMatch(value)) {
                      return 'Numéro de pièce d\'identité incorrect';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
            
              SizedBox(
                height: 3.5.h,
              ),
            
              //Date de délivrance
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
                  keyboardType: TextInputType.datetime,
                  //obscureText: state.obscure,
                  decoration: InputDecoration(
                    suffixIconColor: Colors.blue,
                    errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.red,
                    )),
                    errorStyle: const TextStyle(
                      color: Colors.red,
                    ),
                    labelStyle: Theme.of(context).textTheme.bodyMedium,
                    focusColor: Theme.of(context).primaryColor,
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue,
                    )),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue,
                    )),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    labelText: 'Date de délivrance',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Date de délivrance incorrect';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
            
              SizedBox(
                height: 3.5.h,
              ),
            
              //Date de délivrance
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
                  keyboardType: TextInputType.datetime,
                  //obscureText: state.obscure,
                  decoration: InputDecoration(
                    suffixIconColor: Colors.blue,
                    errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.red,
                    )),
                    errorStyle: const TextStyle(
                      color: Colors.red,
                    ),
                    labelStyle: Theme.of(context).textTheme.bodyMedium,
                    focusColor: Theme.of(context).primaryColor,
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue,
                    )),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue,
                    )),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    labelText: 'Date d\'expiration',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Date d\'expiration incorrect';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
            
              SizedBox(
                height: 3.5.h,
              ),
            
              //Numero de pièce d'identité
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
                  keyboardType: TextInputType.text,
                  //obscureText: state.obscure,
                  decoration: InputDecoration(
                    suffixIconColor: Colors.blue,
                    errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.red,
                    )),
                    errorStyle: const TextStyle(
                      color: Colors.red,
                    ),
                    labelStyle: Theme.of(context).textTheme.bodyMedium,
                    focusColor: Theme.of(context).primaryColor,
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue,
                    )),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue,
                    )),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    labelText: 'Noms',
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[0-9]{4,8}$').hasMatch(value)) {
                      return 'Noms incorrect';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
            
              SizedBox(
                height: 3.5.h,
              ),
            
              //Numero de pièce d'identité
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
                  keyboardType: TextInputType.number,
                  //obscureText: state.obscure,
                  decoration: InputDecoration(
                    suffixIconColor: Colors.blue,
                    errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.red,
                    )),
                    errorStyle: const TextStyle(
                      color: Colors.red,
                    ),
                    labelStyle: Theme.of(context).textTheme.bodyMedium,
                    focusColor: Theme.of(context).primaryColor,
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue,
                    )),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue,
                    )),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    labelText: 'Prénoms',
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[0-9]{4,8}$').hasMatch(value)) {
                      return 'Prénoms incorrects';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
            
              SizedBox(
                height: 3.5.h,
              ),
            
              //Mail MATRICOM
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
                  keyboardType: TextInputType.emailAddress,
                  //obscureText: state.obscure,
                  decoration: InputDecoration(
                    suffixIconColor: Colors.blue,
                    errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.red,
                    )),
                    errorStyle: const TextStyle(
                      color: Colors.red,
                    ),
                    labelStyle: Theme.of(context).textTheme.bodyMedium,
                    focusColor: Theme.of(context).primaryColor,
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue,
                    )),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue,
                    )),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    labelText: 'Mail MATRICOM',
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[0-9]{4,8}$').hasMatch(value)) {
                      return 'Mail incorrect';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
            
              SizedBox(
                height: 3.5.h,
              ),
            
              //Numero de pièce d'identité
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  cursorColor: Theme.of(context).primaryColor,
                  keyboardType: TextInputType.text,
                  //obscureText: state.obscure,
                  decoration: InputDecoration(
                    suffixIconColor: Colors.blue,
                    errorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.red,
                    )),
                    errorStyle: const TextStyle(
                      color: Colors.red,
                    ),
                    labelStyle: Theme.of(context).textTheme.bodyMedium,
                    focusColor: Theme.of(context).primaryColor,
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue,
                    )),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.blue,
                    )),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    labelText: 'Lieu d\'identité',
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[0-9]{4,8}$').hasMatch(value)) {
                      return 'Lieu incorrect';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
            
              SizedBox(
                height: 3.5.h,
              ),

              Container(
                  height: 6.h,
                  width: 50.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.blue
                      ),
                      color: Colors.transparent,
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            // Color.fromARGB(255, 33, 168, 116),
                            Colors.blue,
                            Color.fromARGB(255, 151, 206, 251),
                          ])),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(Icons.camera_alt),
                      Text(
                    'Pièce d\'identité',
                    style: TextStyle(
                        color: const Color(0xFF007549),
                        fontWeight: FontWeight.bold,
                        fontSize: 13.sp),
                  ),
                    ],
                  )
                ),
              
              SizedBox(
                height: 1.5.h,
              ),
            
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //bouton valider
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Get.to(() => const Valider_abonnement3(), transition: Transition.rightToLeft);
                    }
                  },
                  child: Container(
                    height: 6.h,
                    width: 30.w,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              // Color.fromARGB(255, 33, 168, 116),
                              Colors.blue,
                              Color.fromARGB(255, 151, 206, 251),
                            ])),
                    child: Text(
                      'VALIDER',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.sp),
                    ),
                  ),
                ),
                            
                SizedBox(
                  width: 7.5.w,
                ),
                            
                //bouton annuler
                InkWell(
                  onTap: () {
                      //Get.offAll(() => const Navigations(), transition: Transition.downToUp);
                      Get.back();
                  },
                  child: Container(
                    height: 6.h,
                    width: 30.w,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Color(0xFF007549),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              // Color.fromARGB(255, 33, 168, 116),
                              Colors.blue,
                              Color.fromARGB(255, 151, 206, 251),
                            ])),
                    child: Text(
                      'ANNULER',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.sp),
                    ),
                  ),
                ),
                  ],
                ),
              )
            ],
                    ),
                  ),
          )),
    );
  }
}