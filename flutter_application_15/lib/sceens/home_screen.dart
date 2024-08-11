import 'package:flutter/material.dart';
import 'package:flutter_application_15/sceens/vieww/home__view.dart';
import 'package:flutter_application_15/sceens/vieww/list__view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 1;
  late final PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: _currentIndex);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Home',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        controller: _controller,
        children: const [
          HomeView(),
          ListHashtagView(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedItemColor: Colors.red,
          //selectedIconTheme: ,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
            _controller.jumpToPage(_currentIndex);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Hashtags')
          ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          ajout(context);
        },
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}

void ajout(BuildContext context) => showModalBottomSheet(
    context: context,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Wrap(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Text('Ajouter un Ashtag', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Entrez le nom de l\'Ashtag',
                hintStyle: TextStyle(color: Colors.grey)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        
                      },
                      child: const Text(
                        'Add',
                        style: TextStyle(color: Colors.red),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Cancel',
                        style: TextStyle(color: Colors.red),
                      )),
                ],
              ),
            )
          ],
        ),
      );
    },);

