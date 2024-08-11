import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Acceuil_acces_internet extends StatefulWidget {
  const Acceuil_acces_internet({super.key});

  @override
  State<Acceuil_acces_internet> createState() => _Acceuil_acces_internetState();
}

class _Acceuil_acces_internetState extends State<Acceuil_acces_internet> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Text('Activation/Désactivation',
                    style: TextStyle(fontSize: 12.sp)),
                SizedBox(
                  width: 2.w,
                ),
                Container(
                  width: 48.w,
                  height: .05.h,
                  decoration: const BoxDecoration(color: Colors.black),
                ),

                //SizedBox(width: 3.w,),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            SwitchListTile(
              title: Text(
                'Accès internet Activé',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13.sp),
              ),
              value: isSwitch,
              activeColor: const Color.fromARGB(255, 1, 135, 244),
              inactiveThumbColor: const Color.fromARGB(255, 152, 204, 247),
              inactiveTrackColor: const Color.fromARGB(255, 233, 240, 247),
              onChanged: (value) {
                setState(() {
                  isSwitch = value;
                });
              },
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Text('Forfait souscrits en cours d\'utilisation',
                    style: TextStyle(fontSize: 12.sp)),
                SizedBox(
                  width: 2.w,
                ),
                Container(
                  width: 24.w,
                  height: .05.h,
                  decoration: const BoxDecoration(color: Colors.black),
                ),

                //SizedBox(width: 3.w,),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            const ListTile(
              leading: Icon(Icons.format_color_fill),
              title: Text(
                'Matri-Day Data Classic',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Quantité de données Totale :'),
                      Text(
                        '1Go',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Quantité de données Restante :'),
                      Text(
                        '1Go',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Text('Statiatiques de consommations',
                    style: TextStyle(fontSize: 12.sp)),
                SizedBox(
                  width: 2.w,
                ),
                Container(
                  width: 35.w,
                  height: .05.h,
                  decoration: const BoxDecoration(color: Colors.black),
                ),

                //SizedBox(width: 3.w,),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 35.w,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.calendar_month),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                        hintText: 'Jour',
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(
                width: 50.w, // Largeur définie à 50% de la largeur de l'écran
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    hintText: 'Sélectionnez',
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'Jour',
                      child: Text('Jour'),
                    ),
                    DropdownMenuItem(
                      value: 'Mois',
                      child: Text('Mois'),
                    ),
                    DropdownMenuItem(
                      value: 'Annee',
                      child: Text('Annee'),
                    ),
                  ], 
                  onChanged: (value) {
                  },
                ),
              ),
                ],
              ),
            ),
            SizedBox(
              height: 1.5.h,
            ),
            Container(
              alignment: Alignment.center,
              width: 100.w,
              height: 32.h,
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 242, 242, 244))
              ),
              child: const Text('No chart available', style: TextStyle(color: Colors.grey),),
            ),
          ],
        ),
      ),
    );
  }
}
