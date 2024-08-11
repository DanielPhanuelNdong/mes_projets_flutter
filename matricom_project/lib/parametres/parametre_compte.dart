import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet_matricom/index.dart';

class Parametre_compte extends StatefulWidget {
  const Parametre_compte({super.key});

  @override
  State<Parametre_compte> createState() => _Parametre_compteState();
}

class _Parametre_compteState extends State<Parametre_compte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();
          }, 
          icon: const Icon(Icons.chevron_left, color: Colors.white, size: 30,)
          ),
        title: const Text('Paramètres du compte', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ),
      body: Column(
        children: [
          ListTile(
        leading: const Icon(Icons.sim_card),
        title: const Text('ISIM', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        onTap: () {
          Get.to(() => const Parametre_sim(), transition: Transition.rightToLeft);
        },
      ),
      const Divider()
        ],
      )
    );
  }
}