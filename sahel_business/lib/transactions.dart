import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mes Transactions', style: TextStyle(color: Color.fromARGB(255, 249, 156, 85), fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              height: 20.h,
              width: 35.w,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 1,
                      spreadRadius: 1,
                      offset: const Offset(2, 2),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //Premiere ligne...........
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  '07 Juin 2024',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 0.6.w,
                                ),
                                Container(
                                  height: 3.h,
                                  width: .3.w,
                                  color: Colors.black.withOpacity(.4),
                                ),
                                SizedBox(
                                  width: 0.6.w,
                                ),
                                const Text(
                                  '10h15',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Row(
                              children: [Text('MA\'A NDONG'), Text('(Succès)')],
                            )
                          ],
                        ),
                        const Text(
                          '5000 XAF',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                      ],
                    ),

                    //deuxieme ligne...................
                    const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Transactions ID :',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Text(
                                'Type de transaction :',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Text(
                                'De :',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '457865494',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Text(
                                'Transfert',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Text(
                                '237658906909',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 15),
    )
    ) ;
  }
}