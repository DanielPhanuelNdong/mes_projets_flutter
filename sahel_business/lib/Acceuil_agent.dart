import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sahel_business/index.dart';
import 'package:sizer/sizer.dart';

class Acceuil_agent extends StatefulWidget {
  const Acceuil_agent({super.key});

  @override
  State<Acceuil_agent> createState() => _Acceuil_agentState();
}

class _Acceuil_agentState extends State<Acceuil_agent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 1.h,
            ),
            Container(
              alignment: Alignment.center,
              height: 15.h,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 246, 236, 229),
            ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  textAlign: TextAlign.center,
                  'Bienvenue madame Saharatou nous sommes heureux de vous compter parmi nos Agents Sahel Money. Votre compte sera crédité de X%  de frais de dépôt et de  Y% de frais de retrait.',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 11.sp, color: const Color(0xFF007549),),
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              height: 25.h,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  //color: const Color(0xFF007549).withOpacity(.4),
                  //borderRadius: BorderRadius.circular(20.sp),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        //Color.fromARGB(255, 124, 247, 200),
                        Color.fromARGB(255, 11, 198, 126),
                        Color(0xFF007549),
                        //Color.fromARGB(255, 20, 187, 123),
                      ])),
              child: Column(
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Gains Totaux',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'XAF 30001',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 244, 177, 127)
                                    .withOpacity(.99),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      FloatingActionButton(
                        heroTag: 'tag1',
                        backgroundColor: const Color.fromARGB(255, 244, 242, 242),
                        shape: const CircleBorder(),
                        onPressed: () {
                          Get.to(() => const Transactions());
                        },
                        child: Icon(Icons.swap_vert, size: 30.sp, color: Color.fromARGB(255, 2, 148, 92),),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Gains dépots',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '+ 33401 XAF',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 244, 177, 127)
                                    .withOpacity(.99),
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'Gains retraits',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '+ 45400 XAF',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 244, 177, 127)
                                    .withOpacity(.99),
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              height: 15.h,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                //color: Color(0xFF007549),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    
                    Color.fromARGB(255, 2, 206, 128),
                    Color(0xFF007549),
                  ]
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 4.h),
                    child: Column(
                      children: [
                        Text(
                          'Solde Dépots',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '- 99887 XAF',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 249, 139, 139)
                                  .withOpacity(.99),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  FloatingActionButton(
                    heroTag: 'tag2',
                    backgroundColor: const Color.fromARGB(255, 1, 143, 88),
                    shape: const CircleBorder(),
                    onPressed: () {
                      Get.to(() => const Transactions());
                    },
                    child: Image.asset('images/envoie.png', fit: BoxFit.cover,)
                  )
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              height: 15.h,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                //color: Color.fromARGB(255, 154, 24, 24),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    
                    Color.fromARGB(255, 249, 68, 68),
                    Color.fromARGB(255, 154, 24, 24),
                  ]
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 4.h),
                    child: Column(
                      children: [
                        Text(
                          'Solde Retraits',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '+ 56771 XAF',
                          style: TextStyle(
                              color:  const Color.fromARGB(255, 128, 241, 198)
                                  .withOpacity(.99),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  FloatingActionButton(
                    heroTag: 'tag3',
                    backgroundColor: const Color.fromARGB(255, 249, 68, 68),
                    shape: const CircleBorder(),
                    onPressed: () {
                      Get.to(() => const Transactions());
                    },
                    child: Image.asset('images/retrait.png')
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
PreferredSizeWidget appbar_Acceuil_agent() {
  return AppBar(
    title: Text(
      'Compte agent',
      style: TextStyle(
          color: const Color.fromARGB(255, 253, 111, 3).withOpacity(.99),
          fontSize: 18.sp,
          fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
  );
}
