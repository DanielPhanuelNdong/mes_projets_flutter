import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Acceuil_marchant extends StatefulWidget {
  const Acceuil_marchant({super.key});

  @override
  State<Acceuil_marchant> createState() => _Acceuil_marchantState();
}

class _Acceuil_marchantState extends State<Acceuil_marchant> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Center(
        child: Text('Marchant'),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
PreferredSizeWidget appbar_Acceuil_marchant() {
  return AppBar(
    title: Text(
      'Compte marchant',
      style: TextStyle(
          color: const Color.fromARGB(255, 253, 111, 3).withOpacity(.99),
          fontSize: 18.sp,
          fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
  );
}