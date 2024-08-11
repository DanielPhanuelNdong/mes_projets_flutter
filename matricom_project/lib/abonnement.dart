import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';
import 'package:projet_matricom/matricom_network.dart';
import 'package:sizer/sizer.dart';

class Abonnement extends StatefulWidget {
  const Abonnement({super.key});

  @override
  State<Abonnement> createState() => _AbonnementState();
}

class _AbonnementState extends State<Abonnement> {
  // ignore: unused_field, non_constant_identifier_names
  String _BarcodeResult = '';
  final formKeys = GlobalKey<FormState>();
  final formKey2s = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromARGB(255, 16, 100, 18),
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          Image.asset(
            'images/logoO.png',
            width: 120,
            height: 120,
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            'Bienvenu Chez MATRICOM',
            style: TextStyle(fontSize: 13.5.sp),
          ),
          SizedBox(
            height: 2.5.h,
          ),
          Text(
            'Abonnement',
            style: TextStyle(fontSize: 16.5.sp, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          SizedBox(
            height: 1.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 3.w,
                  height: 1.5.h,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                OutlinedButton(
                    onPressed: () {
                      showDialog(
                      context: context, 
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Voulez-vous scanner le QRCODE ?', style:  TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold), ),
                          actions: [
                            TextButton(
                              onPressed: (){
                                Get.back();
                                },
                              //style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
                              child: const Text('NO', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),)
                              ),

                              TextButton(
                              onPressed: (){QRCodeScan();},
                              //style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green[900])),
                              child: const Text('YES', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),)
                              )
                          ],
                        );
                      },
                      );
                    },
                    style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(310, 50)),
                        side: MaterialStateProperty.all(
                          const BorderSide(color: Colors.green, width: 3),
                        )),
                    child: const Text(
                      'ACTIVER ABONNEMENT',
                      style: TextStyle(color: Colors.green),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 3.w,
                  height: 1.5.h,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color.fromARGB(255, 52, 139, 55),
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(310, 50)),
                        side: MaterialStateProperty.all(
                          const BorderSide(
                              color: Color.fromARGB(255, 52, 139, 55),
                              width: 3),
                        )),
                    child: const Text(
                      'RECONDUCTION DE NUMERO',
                      style: TextStyle(color: Colors.green),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 3.w,
                  height: 1.5.h,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color.fromARGB(255, 34, 117, 37),
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                OutlinedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(310, 50)),
                        side: MaterialStateProperty.all(
                          const BorderSide(
                              color: Color.fromARGB(255, 34, 117, 37),
                              width: 3),
                        )),
                    child: const Text(
                      'INSERER SIM',
                      style: TextStyle(color: Colors.green),
                    ))
              ],
            ),
          )
        ],
      )),
    );
  }

  // ignore: non_constant_identifier_names
  void QRCodeScan() async {
    // ignore: non_constant_identifier_names
    String QRCode;
    try {
      QRCode = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", // Scan line color
          "Cancel", // Cancel button text
          true, // Whether to use the rear camera
          ScanMode.QR);
    } on PlatformException {
      QRCode = 'Echec PlatformException';
    }

    if (!mounted) return;

    setState(() {
      _BarcodeResult = QRCode;
    });

    if (_BarcodeResult != '') {
      Get.back();
      Get.defaultDialog(
          radius: 5,
          barrierDismissible: false,
          title: 'Activer mon préabonnement',
          titleStyle:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
          titlePadding: const EdgeInsets.only(top: 30, right: 15, left: 15),
          content: Column(
            children: [
              //Numéro de pièce d'identité
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  //controller: Controller_email,
                  decoration: InputDecoration(
                    labelStyle: Theme.of(context).textTheme.bodyMedium,
                    focusColor: Theme.of(context).primaryColor,
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Theme.of(context).primaryColor,
                    )),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Theme.of(context).primaryColor,
                    )),
                    labelText: 'Numéro de pièce d\'identité',
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\S\./0-9]+$')
                            .hasMatch(value)) {
                      return 'Entrer le numéro de pièce d\'identité';
                    } else {
                      return null;
                    }
                  },
                ),
              ),

              SizedBox(
                height: 2.5.h,
              ),

              InkWell(
                onTap: () {
                  Get.offAll(() => const Matricom_Network(), transition: Transition.zoom);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 220,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: Colors.green[900],
                  ),
                  child: const Text(
                    'Valider',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              SizedBox(
                height: 1.5.h,
              ),

              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 220,
                  height: 40,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.green,
                  ),
                  child: const Text(
                    'annuler',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          )
          );
      // // Navigate to another page with the scanned result
      //Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(_BarcodeResult)));
    }
  }
}
