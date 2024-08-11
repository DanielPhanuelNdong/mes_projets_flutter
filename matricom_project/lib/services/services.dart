import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'forfaits.dart';
import 'forfaits_couscrits.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> with SingleTickerProviderStateMixin {
  late TabController tabcontroleur;

  @override
  void initState() {
    super.initState();
    tabcontroleur = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabcontroleur.dispose();
  }
  @override
  Widget build(BuildContext context)  {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
          onPressed: (){
            Get.back();
          }, 
          icon: const Icon(Icons.chevron_left, color: Colors.white, size: 30,)
          ),
          title: const Text('Forfaits', style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.green[900],
          bottom: const TabBar(
            //controller: tabcontroleur,
            labelColor: Colors.white,
            unselectedLabelColor: Color.fromARGB(255, 156, 155, 155),
            indicatorColor: Colors.blue,
            indicatorWeight: 4,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: 'FORFAITS'),
              Tab(text: 'FORFAITS SOUSCRITS'),
            ]
            ),
        ),

        body: const TabBarView(
          children: [
            Forfaits(),
            Frfaits_souscrits(),
          ]
          ),
      ),
    );
  }
}