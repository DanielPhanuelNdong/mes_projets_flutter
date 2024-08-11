import 'package:flutter/material.dart';
import 'package:flutter_application_5/index.dart';
import 'package:get/get.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    var count = 0.obs;
    void compter() {
      count = count + 1;
    }

    ;
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.snackbar(
                    'Mon titre',
                    'Mon message est ici',
                    snackPosition: SnackPosition.BOTTOM,
                  );
                },
                child: const Text('Show Snackbar')),
            ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(Wrap(
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
                  ));
                },
                child: const Text('Show bottomSheet')),
            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog();
                },
                child: const Text('Show bottom dialog')),
            ElevatedButton(
                onPressed: () {
                  Get.to(
                    () => const Page2(),
                    fullscreenDialog: true,
                  );
                },
                child: const Text('Go to Page 2')),
            Obx(
              () =>Text('Incrementation de $count'),
            ),
            ElevatedButton(
                onPressed: () {
                  count++;
                },
                child: const Text('Incrément'))
          ],
        ),
      ),
    );
  }
}
