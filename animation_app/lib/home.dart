import 'dart:math';

import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with SingleTickerProviderStateMixin {
  late AnimationController controle;
  late Animation anime;

  @override
  void initState() {
    super.initState();
    controle = AnimationController(duration: const Duration(seconds: 2), vsync: this);
    anime = Tween(begin: 0.0, end: 2 * pi).animate(controle);
    controle.repeat();
  }

  @override
  void dispose() {
    super.dispose();
    controle.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),

      body: Center(
        child: AnimatedBuilder(
          animation: controle, 
          builder: (context, child) {
            return Transform(
          alignment: Alignment.center,
          //origin: const Offset(50, 50),
          transform: Matrix4.identity()..rotateZ(anime.value),
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.2),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                )
              ]
            ),
          ),
        );
      
          },)
        ),
    );
  }
}