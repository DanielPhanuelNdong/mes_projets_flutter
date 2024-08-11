import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Parametre_sim extends StatefulWidget {
  const Parametre_sim({super.key});

  @override
  State<Parametre_sim> createState() => _Parametre_simState();
}

class _Parametre_simState extends State<Parametre_sim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 25,
            )
            ),
        title: const Text(
          'Paramètres des SIM',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[900],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[900],
        onPressed: () {
          Get.snackbar(
            'Attention',
            'Cette fonctionnalité est indisponible',
            colorText: Colors.white,
            duration: const Duration(seconds: 4),
            backgroundColor: Colors.red[900],
            snackPosition: SnackPosition.BOTTOM,
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text(
              'SIM 0',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('9586957'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: 27.0,
                          height: 27.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green[900],
                          ),
                          child: const Icon(
                            Icons.horizontal_rule,
                            color: Colors.white,
                            size: 20,
                          )),
                      SizedBox(
                        width: 3.w,
                      ),
                      const Icon(
                        Icons.wifi_tethering_off,
                        color: Colors.green,
                      ),
                    ],
                  )
                ],
              ),
            ),
            onTap: () {
              Get.snackbar(
                'Attention',
                'Cette fonctionnalité est indisponible',
                colorText: Colors.white,
                duration: const Duration(seconds: 4),
                backgroundColor: Colors.red[900],
                snackPosition: SnackPosition.BOTTOM,
              );
            },
          ),
          const Divider()
        ],
      ),
    );
  }
}
