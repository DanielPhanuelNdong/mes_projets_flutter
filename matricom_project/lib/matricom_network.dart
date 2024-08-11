import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet_matricom/index.dart';
import 'package:projet_matricom/services/index.dart';
import 'package:sizer/sizer.dart';

class Matricom_Network extends StatefulWidget {
  const Matricom_Network({super.key});

  @override
  State<Matricom_Network> createState() => _Matricom_NetworkState();
}

class _Matricom_NetworkState extends State<Matricom_Network> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MATRICOMNETWORK',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => const Parametre_compte(),
                                transition: Transition.rightToLeft);
                          },
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage('images/parametre.png')),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 234, 255, 241),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                  ),
                                ]),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          'Parametres',
                          style: TextStyle(
                              color: Colors.green[900],
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Get.to(() => const Services(), transition: Transition.rightToLeft);
                          },
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage('images/services.png')),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 234, 255, 241),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                  ),
                                ]),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          'Services',
                          style: TextStyle(
                              color: Colors.green[900],
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Get.to(() => const Acces_internet(), transition: Transition.rightToLeft);
                          },
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image:
                                        AssetImage('images/acces_internet.png')),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 234, 255, 241),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                  ),
                                ]
                                ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          'Accès Internet',
                          style: TextStyle(
                              color: Colors.green[900],
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Get.snackbar(
                              'Attention', 'Cette fonctionnalité est indisponible',
                              colorText: Colors.white,
                              duration: const Duration(seconds: 4),
                              backgroundColor: Colors.red[900],
                              snackPosition: SnackPosition.BOTTOM,
                              );
                          },
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage('images/matrichat.png')),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 234, 255, 241),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                  ),
                                ]),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          'Matrichat',
                          style: TextStyle(
                              color: Colors.green[900],
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Get.snackbar(
                              'Attention', 'Cette fonctionnalité est indisponible',
                              colorText: Colors.white,
                              duration: const Duration(seconds: 4),
                              backgroundColor: Colors.red[900],
                              snackPosition: SnackPosition.BOTTOM,
                              );
                          },
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image: AssetImage('images/mediatheque.png')),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 234, 255, 241),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                  ),
                                ]),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          'Médiathèque',
                          style: TextStyle(
                              color: Colors.green[900],
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Get.to(() => const Transactions(), transition: Transition.rightToLeft);
                            //lecontext(context);
                          },
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                    image:
                                        AssetImage('images/transaction.png')),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 234, 255, 241),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                  ),
                                ]
                                ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          'Transactions',
                          style: TextStyle(
                              color: Colors.green[900],
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Get.snackbar(
                                'Attention', 'Cette fonctionnalité est indisponible',
                                colorText: Colors.white,
                                duration: const Duration(seconds: 4),
                                backgroundColor: Colors.red[900],
                                snackPosition: SnackPosition.BOTTOM,
                                );
                            },
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage('images/matricall.png')),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 234, 255, 241),
                                      spreadRadius: 3,
                                      blurRadius: 5,
                                    ),
                                  ]
                                  ),
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            'Matricall',
                            style: TextStyle(
                                color: Colors.green[900],
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// lecontext(context){
//   context.read<BlocBloc1>().add(nav_bar(element: 0));
// }
