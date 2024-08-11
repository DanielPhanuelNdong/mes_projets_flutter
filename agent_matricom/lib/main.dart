import 'package:agent_matricom/features/Bloc/presentation/bloc/bloc_bloc.dart';
import 'package:agent_matricom/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
//import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFF007549), // définit la couleur de la barre d'état
    statusBarIconBrightness: Brightness.light, // définit la couleur des icônes de la barre d'état
  )
  );
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BlocBloc1()),
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
      home: const Login(),
    );
      },
      )
      );
  }
  
  
}
// void changeStatusBarColor() {
//   FlutterStatusbarcolor.setStatusBarColor(Colors.blue);
// }
// void changeStatusBarColor() {
//   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//     statusBarColor: Colors.blue, // définit la couleur de la barre d'état
//     statusBarIconBrightness: Brightness.light, // définit la couleur des icônes de la barre d'état
//   )
//   );
// }


