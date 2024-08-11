import 'package:flutter/material.dart';

class accuiel extends StatefulWidget {
  const accuiel({super.key});

  @override
  State<accuiel> createState() => _accuielState();
}

class _accuielState extends State<accuiel> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text('Bienvenu ici ', style: TextStyle(fontSize: 40, color: Colors.red, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}