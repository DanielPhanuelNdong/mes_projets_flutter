import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Reglages extends StatefulWidget {
  const Reglages({super.key});

  @override
  State<Reglages> createState() => _ReglagesState();
}

class _ReglagesState extends State<Reglages> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                
              },
              child: Text(
              'Se déconnecter',
              style: TextStyle(
                  color: const Color(0xFF007549).withOpacity(.9),
                  fontWeight: FontWeight.w700,
                  fontSize: 17.sp),
            )
              ),
        
              const Divider(),
        
              TextButton(
              onPressed: () {
                
              },
              child: Text(
              'Choisir la langue',
              style: TextStyle(
                  color: const Color(0xFFc75c0c).withOpacity(.9),
                  fontWeight: FontWeight.w700,
                  fontSize: 12.5.sp),
            )
              ),
        
              TextButton(
              onPressed: () {
                
              },
              child: Text(
              'Modifier le mot de passe de votre compte',
              style: TextStyle(
                  color: const Color(0xFFc75c0c).withOpacity(.9),
                  fontWeight: FontWeight.w700,
                  fontSize: 12.sp),
            )
              ),
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
PreferredSizeWidget appbar_reglages() {
  return AppBar(
    leading: const SizedBox(),
    title: Text('Réglages',
      style: TextStyle(
        color: const Color.fromARGB(255, 253, 111, 3).withOpacity(.99),
        fontSize: 18.sp,
        fontWeight: FontWeight.bold
      ),),
    centerTitle: true,
  );
}
