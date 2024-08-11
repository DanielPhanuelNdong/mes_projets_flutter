import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sizer/sizer.dart';

import 'index.dart';

class Navigations extends StatefulWidget {
  const Navigations({super.key});

  @override
  State<Navigations> createState() => _NavigationsState();
}

class _NavigationsState extends State<Navigations> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocBloc1, nav_bar_state>(
      builder: (context, state) {
        return Scaffold(
          body: state.element,
          floatingActionButton: state.bouton,
      bottomNavigationBar: GNav(
            onTabChange: (value) {
              context.read<BlocBloc1>().add(nav_bar(element: value));
            },
            backgroundColor: const Color(0xFF007549),
            color: Colors.white,
            // tabBackgroundGradient: const LinearGradient(
            //   begin: Alignment.topCenter,
            //   end: Alignment.bottomCenter,
            //   colors: [
            //     Color.fromARGB(255, 102, 153, 204),
            //   ]
            //   ),
            tabBackgroundColor:
                const Color.fromARGB(255, 77, 176, 252).withOpacity(.8),
            activeColor: Colors.white,
            tabMargin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(10),
            iconSize: 20.sp,
            gap: 7,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Acceuil',
              ),
              GButton(
                icon: Icons.group,
                text: 'Abonnements',
              ),
              GButton(
                icon: Icons.attach_money,
              ),
              GButton(
                icon: Icons.group,
                text: 'Abonnements',
              ),
              GButton(
                icon: Icons.person,
                text: 'Réglages',
              )
            ],
          ),
    );
      },
    );
  }
}