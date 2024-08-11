import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Connexions_acces_internet extends StatefulWidget {
  const Connexions_acces_internet({super.key});

  @override
  State<Connexions_acces_internet> createState() =>
      _Connexions_acces_internetState();
}

class _Connexions_acces_internetState extends State<Connexions_acces_internet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        width: 100.w,
        height: 100.h,
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'images/partage.png',
                width: 250,
                height: 250,
              ),
            ),
            Text(
              'Utiliser vos Data sur d\'autres appareils',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
            ),
            SizedBox(
              height: .5.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Center(
                child: Text.rich(
                  TextSpan(
                    text: 'Vous pouvez connecter d’autres appareils à cette iSIM.',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 11.sp, ),
                    children: [
                      TextSpan(
                        text: 'En savoir plus….',
                        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 10.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: .5.h,
            ),
            Container(
              width: 100.w,
              height: 32.h,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 241, 241, 243)
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            InkWell(
              onTap: (){},
              child: Container(
                width: 80.w,
                height: 6.5.h,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 3, 108, 194),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Text('Connecter un appareil', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15.sp),),
              ),
            ),
      
          ],
        ),
      ),
    );
  }
}
