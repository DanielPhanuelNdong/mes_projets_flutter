import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projet_matricom/index.dart';
import 'package:sizer/sizer.dart';

class Forfaits extends StatefulWidget {
  const Forfaits({super.key});

  @override
  State<Forfaits> createState() => _ForfaitsState();
}

class _ForfaitsState extends State<Forfaits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 2.5.h,
          crossAxisSpacing: 2.5.h,
          children: [
            //Forfait Appel Audio
            GestureDetector(
              onTap: () {
                Get.to(() => const Forfait_appel_vocal(), transition: Transition.rightToLeft);
              },
              child: Card(
                borderOnForeground: false,
                color:
                    const Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, right: 8, left: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.call,
                              size: 40.sp,
                              color: Colors.blue,
                            ),
                            Icon(
                              Icons.sync_alt,
                              size: 20.sp,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.h),
                      const Text('FORFAITS'),
                      const Text(
                        'Appel Audio',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 1.h),
                      Container(
                        height: 2.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  const Color.fromARGB(255, 230, 241, 250)
                                      .withOpacity(0.8),
                                  Colors.blue.withOpacity(0.8),
                                ])),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //Forfait Appel video
            GestureDetector(
              onTap: () {
                Get.to(() => const Forfait_appel_video(), transition: Transition.rightToLeft);
              },
              child: Card(
                borderOnForeground: false,
                color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, right: 8, left: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.video_call,
                              size: 40.sp,
                              color: Colors.blue,
                            ),
                            Icon(
                              Icons.sync_alt,
                              size: 20.sp,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.h),
                      const Text('FORFAITS'),
                      const Text(
                        'Appel Vidéo',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 1.h),
                      Container(
                        height: 2.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  const Color.fromARGB(255, 230, 241, 250)
                                      .withOpacity(0.8),
                                  Colors.blue.withOpacity(0.8),
                                ])),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //Forfait Appel SMS/MMS
            GestureDetector(
              onTap: () {
                Get.to(() => const Forfait_sms(), transition: Transition.rightToLeft);
              },
              child: Card(
                borderOnForeground: false,
                color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, right: 8, left: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.message,
                              size: 40.sp,
                              color: Colors.blue,
                            ),
                            Icon(
                              Icons.sync_alt,
                              size: 20.sp,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.h),
                      const Text('FORFAITS'),
                      const Text(
                        'SMS/MMS',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 1.h),
                      Container(
                        height: 2.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  const Color.fromARGB(255, 230, 241, 250)
                                      .withOpacity(0.8),
                                  Colors.blue.withOpacity(0.8),
                                ])),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //Forfait Appel internet
            GestureDetector(
              onTap: () {
                Get.to(() => const Forfait_internet(), transition: Transition.rightToLeft);
              },
              child: Card(
                borderOnForeground: false,
                color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, right: 8, left: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.public,
                              size: 40.sp,
                              color: Colors.blue,
                            ),
                            Icon(
                              Icons.sync_alt,
                              size: 20.sp,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.h),
                      const Text('FORFAITS'),
                      const Text(
                        'Internet',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 1.h),
                      Container(
                        height: 2.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  const Color.fromARGB(255, 230, 241, 250)
                                      .withOpacity(0.8),
                                  Colors.blue.withOpacity(0.8),
                                ])),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //Forfait Appel mediatheque
            GestureDetector(
              onTap: () {
                Get.to(() => const Forfait_mediatheque(), transition: Transition.rightToLeft);
              },
              child: Card(
                borderOnForeground: false,
                color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, right: 8, left: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.video_library,
                              size: 40.sp,
                              color: Colors.blue,
                            ),
                            Icon(
                              Icons.sync_alt,
                              size: 20.sp,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.h),
                      const Text('FORFAITS'),
                      const Text(
                        'Médiathèque',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 1.h),
                      Container(
                        height: 2.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  const Color.fromARGB(255, 230, 241, 250)
                                      .withOpacity(0.8),
                                  Colors.blue.withOpacity(0.8),
                                ])),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //Forfait Appel mixte
            GestureDetector(
              onTap: () {
                Get.to(() => const Forfait_mixtes(), transition: Transition.rightToLeft);
              },
              child: Card(
                borderOnForeground: false,
                color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, right: 8, left: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.all_inclusive,
                              size: 40.sp,
                              color: Colors.blue,
                            ),
                            Icon(
                              Icons.sync_alt,
                              size: 20.sp,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.h),
                      const Text('FORFAITS'),
                      const Text(
                        'Mixtes',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 1.h),
                      Container(
                        height: 2.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  const Color.fromARGB(255, 230, 241, 250)
                                      .withOpacity(0.8),
                                  Colors.blue.withOpacity(0.8),
                                ])),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
