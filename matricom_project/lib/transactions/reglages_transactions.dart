import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Reglages_transactions extends StatefulWidget {
  const Reglages_transactions({super.key});

  @override
  State<Reglages_transactions> createState() => _Reglages_transactionsState();
}

class _Reglages_transactionsState extends State<Reglages_transactions> {
  @override
  Widget build(BuildContext context) {
    // double height_h = MediaQuery.of(context).size.height;
    // double width_w = MediaQuery.of(context).size.width;
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
                  ],
                ),
              ),
            )
            )
            );
  }
}
