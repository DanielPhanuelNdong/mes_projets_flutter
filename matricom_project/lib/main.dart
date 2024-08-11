import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:projet_matricom/features/Bloc/presentation/bloc/bloc_bloc.dart';
import 'package:sizer/sizer.dart';

import 'abonnement.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BlocBloc1()),
        BlocProvider(create: (context) => BlocBloc2())
      ],
      child: Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Abonnement(),
    );
      },
      )
      );
  }
}
