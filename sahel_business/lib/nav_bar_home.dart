import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sizer/sizer.dart';

import 'index.dart';

class Nav_bar_home extends StatefulWidget {
  const Nav_bar_home({super.key});

  @override
  State<Nav_bar_home> createState() => _Nav_bar_homeState();
}

class _Nav_bar_homeState extends State<Nav_bar_home> {
  List elements = [const Acceuil_agent(), const Historiques(), const Reglages()];
  int valeur = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocBloc1, nav_bar_state>(
      builder: (context, state) {
        return Scaffold(
          drawer: Drawer(
              backgroundColor:
                  const Color.fromARGB(255, 249, 241, 234).withOpacity(.8),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: const Color(0xFF007549).withOpacity(.8),
                    ),
                    accountName: const Text('Mr MA\'A NDONG Clement'),
                    accountEmail: const Text('ndgfowos@gmail.com'),
                    currentAccountPicture: const CircleAvatar(
                      backgroundImage: AssetImage('images/avatar.png'),
                    ),
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.w),
                    child: Text(
                      'Statut :',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 187, 76, 2)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  ListTile(
                      leading: const Icon(Icons.person_2_outlined),
                      title: const Text('Compte Agent'),
                      onTap: () {
                        context.read<BlocBloc1>().add(nav_bar(element: 0, boul: true));
                        Navigator.pop(context);
                      }),
                  ListTile(
                      leading: const Icon(Icons.local_offer),
                      title: const Text('Compte Marchant'),
                      onTap: () {
                        context.read<BlocBloc1>().add(nav_bar(element: 0, boul: false));
                        Navigator.pop(context);
                      }),
                  Divider(
                    height: .7.h,
                    color: const Color(0xFF007549).withOpacity(.8),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Container(
                    height: 5.h,
                    width: 2.w,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 74, 74, 74)
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Se déconnecter',
                          style: TextStyle(
                            color: Color.fromARGB(255, 249, 156, 85),
                          ),
                        )),
                  )
                ],
              )),
          appBar: state.appbar,
          body: state.element,
          bottomNavigationBar: GNav(
            onTabChange: (value) {
              setState(() {
                context
                    .read<BlocBloc1>()
                    .add(nav_bar(element: value, boul: state.boul));
              });
            },
            backgroundColor: const Color(0xFF007549),
            color: Colors.white,
            tabBackgroundColor:
                const Color.fromARGB(255, 253, 111, 3).withOpacity(.8),
            activeColor: Colors.white,
            tabMargin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(10),
            iconSize: 20.sp,
            gap: 7,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Acceuil',
              ),
              GButton(
                icon: Icons.list,
                text: 'Historiques',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Réglages',
              )
            ],
          ),
        );
      },
    );
  }
}
