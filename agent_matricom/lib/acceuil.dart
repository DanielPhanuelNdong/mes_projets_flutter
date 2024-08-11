import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Acceuil extends StatefulWidget {
  const Acceuil({super.key});

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.only(bottom: 700),
                  width: screen_width,
                  height: screen_height,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF007549),
                        Color.fromARGB(255, 33, 168, 116),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 1.h, left: 10.w, right: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 7.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Solde',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11.sp),
                              ),
                              Text(
                                '4600 XAF',
                                style: TextStyle(
                                    color: const Color.fromARGB(255, 77, 176, 252)
                                        .withOpacity(.9),
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: const Color.fromARGB(255, 77, 176, 252)
                                .withOpacity(.8),
                          ),
                          child: const Icon(
                            Icons.attach_money,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 15.h,
                  child: Container(
                    width: screen_width,
                    height: screen_height - 15.h,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: .5.h, bottom: 6.h, left: 5.w, right: 5.w),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Abonnements.................................................
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Abonnements',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp,
                                    color: Color.fromARGB(255, 171, 169, 169),
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Container(
                                  width: screen_width,
                                  height: 14.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: Color.fromARGB(255, 169, 208, 237)
                                        .withOpacity(.8),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Nombre Total :',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF007549),
                                              ),
                                            ),
                                            Text(
                                              '73',
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Nombre Activés :',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF007549),
                                              ),
                                            ),
                                            Text(
                                              '36',
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Nombre En Attente d\'Activation :',
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF007549),
                                              ),
                                            ),
                                            Text(
                                              '39',
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            //Transactions...........................................
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Transacions',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp,
                                    color: const Color.fromARGB(255, 171, 169, 169),
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Container(
                                  width: screen_width,
                                  height: 14.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: const Color.fromARGB(255, 169, 208, 237)
                                        .withOpacity(.8),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 1.5.h,
                                      ),
                                      Text(
                                        'Transferts de crédit éffectués',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF007549),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 30),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                width: 32.w,
                                                height: 7.h,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(9),
                                                    color: Colors.white),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    children: [
                                                      const Text(
                                                        'Nombre',
                                                      ),
                                                      SizedBox(
                                                        height: .2.h,
                                                      ),
                                                      Text(
                                                        '23',
                                                        style: TextStyle(
                                                          fontSize: 10.sp,
                                                          fontWeight: FontWeight.bold,
                                                          color: Color(0xFF007549),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )),
                                            SizedBox(
                                              width: 6.w,
                                            ),
                                            Container(
                                              width: 32.w,
                                              height: 7.h,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(9),
                                                  color: Colors.white),
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    const Text(
                                                      'Montant',
                                                    ),
                                                    SizedBox(
                                                      height: .2.h,
                                                    ),
                                                    Text(
                                                      '23390 XAF',
                                                      style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight: FontWeight.bold,
                                                        color: Color(0xFF007549),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Container(
                                  width: screen_width,
                                  height: 14.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: Color.fromARGB(255, 169, 208, 237)
                                        .withOpacity(.8),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 1.5.h,
                                      ),
                                      Text(
                                        'Transferts de crédit reçu',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF007549),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 30),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                width: 32.w,
                                                height: 7.h,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(9),
                                                    color: Colors.white),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    children: [
                                                      const Text(
                                                        'Nombre',
                                                      ),
                                                      SizedBox(
                                                        height: .2.h,
                                                      ),
                                                      Text(
                                                        '40',
                                                        style: TextStyle(
                                                          fontSize: 10.sp,
                                                          fontWeight: FontWeight.bold,
                                                          color: Color(0xFF007549),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )),
                                            SizedBox(
                                              width: 6.w,
                                            ),
                                            Container(
                                              width: 32.w,
                                              height: 7.h,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(9),
                                                  color: Colors.white),
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    const Text(
                                                      'Montant',
                                                    ),
                                                    SizedBox(
                                                      height: .2.h,
                                                    ),
                                                    Text(
                                                      '90550 XAF',
                                                      style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight: FontWeight.bold,
                                                        color: Color(0xFF007549),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Container(
                                  width: screen_width,
                                  height: 14.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: Color.fromARGB(255, 169, 208, 237)
                                        .withOpacity(.8),
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 1.5.h,
                                      ),
                                      Text(
                                        'Géneration de crédit',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF007549),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 30),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                width: 32.w,
                                                height: 7.h,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(9),
                                                    color: Colors.white),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    children: [
                                                      const Text(
                                                        'Nombre',
                                                      ),
                                                      SizedBox(
                                                        height: .2.h,
                                                      ),
                                                      Text(
                                                        '70',
                                                        style: TextStyle(
                                                          fontSize: 10.sp,
                                                          fontWeight: FontWeight.bold,
                                                          color: Color(0xFF007549),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )),
                                            SizedBox(
                                              width: 6.w,
                                            ),
                                            Container(
                                              width: 32.w,
                                              height: 7.h,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(9),
                                                  color: Colors.white),
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    const Text(
                                                      'Montant',
                                                    ),
                                                    SizedBox(
                                                      height: .2.h,
                                                    ),
                                                    Text(
                                                      '70000 XAF',
                                                      style: TextStyle(
                                                        fontSize: 10.sp,
                                                        fontWeight: FontWeight.bold,
                                                        color: Color(0xFF007549),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mes Agents',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp,
                                    color: const Color.fromARGB(255, 171, 169, 169),
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Container(
                                  width: screen_width,
                                  height: 14.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    color: const Color.fromARGB(255, 169, 208, 237)
                                        .withOpacity(.8),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    
  }
}
