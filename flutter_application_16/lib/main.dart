import 'package:flutter/material.dart';
import 'package:flutter_application_16/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Page1()
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  final List tables = [
    const Home_View(),
    const Hashtags()
  ];

  // ignore: non_constant_identifier_names
  int Current_Index = 0;
  late final PageController controle ;

  @override
  void initState() {
    controle = PageController(initialPage: Current_Index);
    super.initState();
  }

  @override
  void dispose() {
    controle.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 3,
        shadowColor: Colors.grey,
      ),

      body: PageView.builder(
        controller: controle,
        onPageChanged: (index) {
          setState(() {
            Current_Index = index;
          });
        },
        itemCount: tables.length,
        itemBuilder: (context, index) {
        return tables[Current_Index];
      },),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: false,
        currentIndex: Current_Index,
        onTap: (index){
          setState(() {
            Current_Index = index;
          });
        },
        
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Hashtags'),
        ]
        ),
      
    );
  }
}