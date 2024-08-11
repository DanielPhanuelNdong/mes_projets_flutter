import 'package:agent_matricom/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Abonnement extends StatefulWidget {
  const Abonnement({super.key});

  @override
  State<Abonnement> createState() => _AbonnementState();
}

class _AbonnementState extends State<Abonnement> {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.topCenter,
                //padding: EdgeInsets.only(bottom: 01.h),
                width: screen_width,
                height: screen_height,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF007549),
                      Color.fromARGB(255, 33, 168, 116),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 6.h, left: 3.w, right: 3.w),
                  child: TextFormField(
                    cursorColor: Theme.of(context).primaryColor,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.0),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      prefixIconColor: const Color.fromARGB(255, 205, 205, 205),
                      errorStyle: const TextStyle(
                        color: Colors.red,
                      ),
                      labelStyle: Theme.of(context).textTheme.bodyMedium,
                      focusColor: Theme.of(context).primaryColor,
                      labelText: 'Rechercher...',
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 15.h,
                child: Container(
                  width: screen_width,
                  height: screen_height - 15.h,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: .5.h, bottom: 7.h, left: 5.w, right: 5.w),
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'NOM ET PRENOM',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 2, 110, 192)
                                      .withOpacity(.8),
                                ),
                              ),
                              const Icon(Icons.access_time, color: Color.fromARGB(255, 27, 192, 2),)
                            ],
                          ),
                          subtitle: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '99488858',
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                              Text('2024-23-05 08:40:09')
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
FloatingActionButton floating_Abonnement_agent() {
  return FloatingActionButton(
    backgroundColor: const Color.fromARGB(255, 2, 110, 192).withOpacity(.8),
    onPressed: () {
      Get.to(() => const valider_abonnement(),
          transition: Transition.leftToRightWithFade);
    },
    child: const Icon(
      Icons.group_add,
      color: Colors.white,
    ),
  );
}
