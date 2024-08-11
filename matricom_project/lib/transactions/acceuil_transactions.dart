import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Acceuil_transactions extends StatefulWidget {
  const Acceuil_transactions({super.key});

  @override
  State<Acceuil_transactions> createState() => _Acceuil_transactionsState();
}

class _Acceuil_transactionsState extends State<Acceuil_transactions> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Get.defaultDialog(
                radius: 5,
                //barrierDismissible: false,
                title: '',
                // titleStyle:
                //     const TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                titlePadding: const EdgeInsets.only(top: 0, right: 0, left: 0),
                content: const Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text(
                        'MATRICOM',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.message),
                      subtitle: Text(
                        'Le Lorem Ipsum est simplement du faux texte utilisé dans la composition et la mise en page avant impression',
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        style: TextStyle(fontWeight: FontWeight.bold),
                        text: 'Date Transaction : ',
                        children: [
                          TextSpan(
                            style: TextStyle(fontWeight: FontWeight.w400),
                            text: ' 23-10-2024',
                          ),
                        ],
                      ),
                    ),
                  ],
                ));
          },
          leading: Image.asset('images/logoO.png'),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'MATRICOM',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 2, 110, 192).withOpacity(.8),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('12-02-2024 08:30:30',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 128, 127, 127),
                          fontSize: 8.sp)),
                  SizedBox(
                    width: 4.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5.w),
                    child: const Icon(
                      Icons.visibility,
                      color: Color.fromARGB(255, 185, 186, 185),
                    ),
                  )
                ],
              )
            ],
          ),
          subtitle: const Text(
            'Le Lorem Ipsum est simplement du faux texte utilisé dans la composition et la mise en page avant impression',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        );
      },
      separatorBuilder: (context, index) => const Divider(),
      itemCount: 15,
    );
  }
}

// ignore: non_constant_identifier_names
FloatingActionButton floating_Abonnement_agent() {
  return FloatingActionButton(
    backgroundColor: const Color.fromARGB(255, 2, 110, 192).withOpacity(.8),
    onPressed: () {
      Get.bottomSheet(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          Container(
            height: 42.h,
            child: Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                ListTile(
                  leading: Image.asset('images/transaction.png'),
                  title: Text(
                    'Nouvelle Transaction',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
                  ),
                ),
                const Divider(),
                const ListTile(
                  title: Text('Choisir le type de transaction à éffectuer'),
                ),
                // const Text('Choisir le type de transaction à éffectuer'),
                ListTile(
                  onTap: () {
                    Get.back();
                    Get.defaultDialog(
                        title: '',
                        content:
                            const Text('Votre compte principal est de 0\$'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: const Text(
                                'D\'ACCORD',
                                style: TextStyle(color: Colors.blue),
                              ))
                        ]);
                  },
                  leading: Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.blue),
                    child: const Icon(
                      Icons.attach_money,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    'Consulter mon solde',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.back();
                    Get.defaultDialog(
                        radius: 5,
                        barrierDismissible: false,
                        title: 'Montant à transférer',
                        titleStyle: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green),
                        titlePadding:
                            const EdgeInsets.only(top: 30, right: 15, left: 15),
                        content: Column(
                          children: [
                            //Numéro de pièce d'identité
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                //controller: Controller_email,
                                decoration: const InputDecoration(
                                  // labelStyle: Theme.of(context).textTheme.bodyMedium,
                                  // focusColor: Theme.of(context).primaryColor,
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          //color: Theme.of(context).primaryColor,
                                          )),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          //color: Theme.of(context).primaryColor,
                                          )),
                                  labelText: 'Montant',
                                ),
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\S\./0-9]+$')
                                          .hasMatch(value)) {
                                    return 'Montant incorrecte';
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
                                Get.back();
                                //Get.offAll(() => const Matricom_Network(), transition: Transition.zoom);
                                Get.defaultDialog(
                                    radius: 5,
                                    barrierDismissible: false,
                                    title: 'Mode de transfert',
                                    titleStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green),
                                    titlePadding: const EdgeInsets.only(
                                        top: 30, right: 15, left: 15),
                                    content: Column(
                                      children: [
                                        RadioListTile(
                                          value: 0,
                                          groupValue: 0,
                                          onChanged: (value) {},
                                          title: const Text('MPSA'),
                                        ),
                                        RadioListTile(
                                          value: 0,
                                          groupValue: 0,
                                          onChanged: (value) {},
                                          title: const Text('Orange'),
                                        ),
                                        // RadioListTile(
                                        //   value: 0,
                                        //   groupValue: 0,
                                        //   onChanged: (value) {},
                                        //   title: const Text('MTN'),
                                        // ),
                                      ],
                                    ),
                                    textConfirm: 'Valider',
                                    textCancel: 'Annuler',
                                    buttonColor: Colors.blue,
                                    onConfirm: () {
                                      Get.back();
                                      Get.defaultDialog(
                                          radius: 5,
                                          barrierDismissible: false,
                                          title: 'Numéro de téléphone du bénéficiaire',
                                          titleStyle: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green),
                                          titlePadding: const EdgeInsets.only(
                                              top: 30, right: 15, left: 15),
                                          content: Column(
                                            children: [
                                              //Numéro de pièce d'identité
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 15),
                                                child: TextFormField(
                                                  keyboardType:
                                                      TextInputType.number,
                                                  //controller: Controller_email,
                                                  decoration:
                                                      const InputDecoration(
                                                    // labelStyle: Theme.of(context).textTheme.bodyMedium,
                                                    // focusColor: Theme.of(context).primaryColor,
                                                    border: UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                            //color: Theme.of(context).primaryColor,
                                                            )),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                            borderSide: BorderSide(
                                                                //color: Theme.of(context).primaryColor,
                                                                )),
                                                    labelText: 'Numéro bénéficiaire',
                                                  ),
                                                  validator: (value) {
                                                    if (value!.isEmpty ||
                                                        !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\S\./0-9]+$')
                                                            .hasMatch(value)) {
                                                      return 'Numéro incorrect';
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
                                                  Get.back();
                                                },
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  width: 220,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(
                                                                20)),
                                                    color: Colors.green[900],
                                                  ),
                                                  child: const Text(
                                                    'Valider',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
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
                                                  decoration:
                                                      const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                20)),
                                                    color: Colors.blue,
                                                  ),
                                                  child: const Text(
                                                    'annuler',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ));
                                    });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 220,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  color: Colors.green[900],
                                ),
                                child: const Text(
                                  'Valider',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Colors.blue,
                                ),
                                child: const Text(
                                  'annuler',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ));
                  },
                  leading: Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.blue),
                    child: const Icon(
                      Icons.swap_calls,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    'Transferer unités',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                  ),
                ),
                ListTile(
                  leading: Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.blue),
                    child: const Icon(
                      Icons.attach_money,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    'Acheter les unités',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                  ),
                ),
              ],
            ),
          ));
    },
    child: const Icon(
      Icons.add,
      color: Colors.white,
    ),
  );
}
