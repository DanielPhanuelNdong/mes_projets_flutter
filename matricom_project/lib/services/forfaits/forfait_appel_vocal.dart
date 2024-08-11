import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Forfait_appel_vocal extends StatefulWidget {
  const Forfait_appel_vocal({super.key});

  @override
  State<Forfait_appel_vocal> createState() => _Forfait_appel_vocalState();
}

class _Forfait_appel_vocalState extends State<Forfait_appel_vocal> {
  bool visible = false;
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
          'Forfaits Appel Audio',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[900],
        ),
      body:  Container(
              // decoration: BoxDecoration(
              //   border: Border.symmetric(vertical: BorderSide(color: Colors.blue, width: 4))
              // ),
              child: Column(
                children: [
                  SizedBox(height: 3.h,),
                  ListTile(
                    title: const Text(
                      'Matri-Day Appel Classic',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    subtitle: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Forfait data 200 = 3000 pour 1 jour'),
                        Text(
                          'Appel vocal',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                      ],
                    ),
                    leading: Image.asset('images/logoO.png'),
                    onTap: () {
                      setState(() {
                        visible = !visible;
                      });
                    },
                  ),
                  Visibility(
                    visible: visible,
                      child: Container(
                          height: 10.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[200],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 25),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            'Cout du orfait :',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                          SizedBox(width: 5,),
                                          Text(
                                            '200',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.blue),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Revenu :',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                          SizedBox(width: 5,),
                                          Text(
                                            '3000',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.blue),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Validité :',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                          SizedBox(width: 5,),
                                          Text(
                                            '1 jour',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.blue),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                      style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                                      onPressed: (){},
                                      child: const Text('Subscribe', style: TextStyle(color: Colors.white),)
                                      )
                                  ],
                                ),
                              ],
                            ),
                          )))
                ],
              ),
            ),
    );
  }
}