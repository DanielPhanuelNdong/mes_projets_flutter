import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            
              ElevatedButton(
                onPressed: (){
                  Get.back();
              },
              child: const Text('Back')
              ),
              ElevatedButton(
                onPressed: (){
                  Get.bottomSheet(
                    Wrap(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.wb_sunny_outlined),
                          title: const Text('Light mode'),
                          onTap: () => Get.changeTheme(ThemeData.light()),
                        ),
                        ListTile(
                          leading: const Icon(Icons.wb_sunny),
                          title: const Text('dark mode'),
                          onTap: () => Get.changeTheme(ThemeData.dark()),
                        )
                      ],
                    )
                  );
              },
              child: const Text('Show bottomSheet')
              ),
              ElevatedButton(
                onPressed: (){
                  Get.defaultDialog();
              },
              child: const Text('Show bottom dialog')
              )
          ],
        ),
      ),
    );
  }
}