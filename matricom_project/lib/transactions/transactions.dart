import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:projet_matricom/features/Bloc/presentation/bloc/bloc_bloc.dart';
import 'package:projet_matricom/features/Bloc/presentation/bloc/bloc_event.dart';
import 'package:projet_matricom/features/Bloc/presentation/bloc/bloc_state.dart';
import 'package:sizer/sizer.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocBloc1, nav_bar_state>(
      builder: (context, state) {
        return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: const Icon(Icons.chevron_left, color: Colors.white, size: 30,)
          ),
        title: Text('Transactions', style: TextStyle(color: Colors.white, fontSize: 17.sp, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: const Color(0xFF007549),
      ),
      body: state.element,
      bottomNavigationBar: GNav(
            onTabChange: (value) {
              context.read<BlocBloc1>().add(nav_bar(element: value));
            },
            backgroundColor: const Color(0xFF007549),
            color: Colors.white,
            tabBackgroundColor:
                const Color.fromARGB(255, 77, 176, 252).withOpacity(.8),
            activeColor: Colors.white,
            tabMargin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            iconSize: 25.sp,
            gap: 7,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Acceuil',
              ),
              GButton(
                icon: Icons.settings,
                text: 'Réglages',
              )
            ],
          ),

      floatingActionButton: state.bouton,
    );
      },
    );
  }
}
