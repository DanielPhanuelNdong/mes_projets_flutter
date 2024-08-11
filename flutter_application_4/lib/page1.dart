import 'package:flutter/material.dart';
import 'package:flutter_application_4/gridPage.dart';
//import 'package:flutter_application_4/gridPage.dart';
//import 'package:flutter_application_4/gridPage.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .45,
            color: Colors.orange,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 241, 128, 21),
                      ),
                      child: Image.asset(
                        'images/menu3.png',
                      ),
                    ),
                  ),
                  const Text(
                    'Good morning \nShishir',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 24, 65),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    height: 60,
                    width: 500,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(35)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 0, 0, 0)
                              .withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset:
                              const Offset(0, 1), // changes position of shadow
                        )
                      ],
                      //shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search, color: Colors.black.withOpacity(.3),),
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 0, 24, 65).withOpacity(.2),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  
                  const GridPage(),

                ],
              ),
            ),
          ),
        ]
      ),
    );
  }
}
