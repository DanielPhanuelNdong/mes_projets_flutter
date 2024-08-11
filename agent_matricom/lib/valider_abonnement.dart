import 'package:agent_matricom/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class valider_abonnement extends StatefulWidget {
  const valider_abonnement({super.key});

  @override
  State<valider_abonnement> createState() => _valider_abonnementState();
}

class _valider_abonnementState extends State<valider_abonnement> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedValue;
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
                'Information d\'identification',
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF007549),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: DropdownButtonFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Choisissez le type de votre pièce',
                    ),
                    value: _selectedValue,
                    items: const [
                      DropdownMenuItem(
                          value: 'Nouvelle Carte Nationnale d\'identité',
                          child: Text('Nouvelle Carte Nationnale d\'identité')),
                      DropdownMenuItem(
                          value: 'Ancienne Carte Nationnale d\'identité',
                          child: Text('Ancienne Carte Nationnale d\'identité')),
                      DropdownMenuItem(
                          value: 'Carte de séjour',
                          child: Text('Carte de séjour')),
                      DropdownMenuItem(
                          value: 'Recépissé de Carte Nationnale d\'identité',
                          child:
                              Text('Recépissé de Carte Nationnale d\'identité')),
                      DropdownMenuItem(
                          value: 'Passeport', child: Text('Passeport')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value;
                      });
                    },
                    validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Veuillez sélectionner le type de votre pièce';
                    } else {
                      return null;
                    }
                  },
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
            
              //bouton valider
              InkWell(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Get.to(() => const Valider_abonnement2(), transition: Transition.rightToLeft);
                  }
                },
                child: Container(
                  height: 6.h,
                  width: 75.w,
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
                height: 3.5.h,
              ),
            
              //bouton annuler
              InkWell(
                onTap: () {
                    //Get.offAll(() => const Navigations(), transition: Transition.downToUp);
                    Get.back();
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
                  ),
          )),
    );
  }
}
