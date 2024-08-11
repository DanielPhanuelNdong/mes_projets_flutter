import 'package:agent_matricom/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Valider_abonnement3 extends StatefulWidget {
  const Valider_abonnement3({super.key});

  @override
  State<Valider_abonnement3> createState() => _Valider_abonnement3State();
}

class _Valider_abonnement3State extends State<Valider_abonnement3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
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
                      border: Border.all(color: Colors.blue),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      color: Colors.transparent),
                ),
                SizedBox(
                  width: 1.3.w,
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      color: Colors.transparent),
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
              ],
            ),
            SizedBox(
              height: 2.h,
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
              height: 1.h,
            ),
            Text(
              'Pièces d\'identités',
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF007549),
              ),
            ),
            const Divider(),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'RECTO',
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              'Veuillez capturer l\'image sur l\'horizontal',
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF007549),
              ),
            ),
            SizedBox(
              height: 2.5.h,
            ),
            Container(
                height: 6.h,
                width: 35.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
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
                      'Capturer',
                      style: TextStyle(
                          color: const Color(0xFF007549),
                          fontWeight: FontWeight.bold,
                          fontSize: 13.sp),
                    ),
                  ],
                )),
            SizedBox(
              height: 2.h,
            ),
            Container(
              height: 15.h,
              width: 90.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
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
            ),
            SizedBox(
              height: 1.5.h,
            ),
            Text(
              'VERSO',
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              'Veuillez capturer l\'image sur l\'horizontal',
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF007549),
              ),
            ),
            SizedBox(
              height: 1.5.h,
            ),
            Container(
                height: 6.h,
                width: 35.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
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
                      'Capturer',
                      style: TextStyle(
                          color: const Color(0xFF007549),
                          fontWeight: FontWeight.bold,
                          fontSize: 13.sp),
                    ),
                  ],
                )),
            SizedBox(
              height: 1.5.h,
            ),
            Container(
              height: 15.h,
              width: 90.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
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
                     showDialog(
                      context: context, 
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Résultat'),
                          content: const Text('Vous venez d\'éffectuer le pre abonnement de' ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Get.back();
                                context.read<BlocBloc1>().add(nav_bar(element: 0));
                                Get.offAll(() => const Navigations());
                              },
                              child: const Text('OK', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                              )
                          ],
                        );
                      },
                      );
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
                        'S\'ABONNER',
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
      )),
    );
  }
}
