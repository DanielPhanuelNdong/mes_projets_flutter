import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Reglages_acces_internet extends StatefulWidget {
  const Reglages_acces_internet({super.key});

  @override
  State<Reglages_acces_internet> createState() => _Reglages_acces_internetState();
}

class _Reglages_acces_internetState extends State<Reglages_acces_internet> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            height: 150.h,
            width: 150.w,
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.blue.withOpacity(.7),
              width: 3,
            )),
            child: Padding(
              padding: EdgeInsets.only(left: 2.w, top: 2.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text('ISIM'),
                        SizedBox(
                          width: 2.w,
                        ),
                        Container(
                          width: 85.w,
                          height: .05.h,
                          decoration: const BoxDecoration(color: Colors.black),
                        ),

                        //SizedBox(width: 3.w,),
                      ],
                    ),
                    Stack(
                      children: [
                        const ListTile(
                          leading: Icon(Icons.sim_card),
                          title: Text(
                            'Numéro utilisé',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('XXXXX5555'),
                          //onTap: () {},
                        ),
                        Positioned(
                          top: 1.5.h,
                          left: 80.w,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mode_edit)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Text('Forfait internet Souscris'),
                        SizedBox(
                          width: 2.w,
                        ),
                        Container(
                          width: 55.w,
                          height: .05.h,
                          decoration: const BoxDecoration(color: Colors.black),
                        ),

                        //SizedBox(width: 3.w,),
                      ],
                    ),
                  ],
                ),
              ),
            )
            )
            );
  }
}