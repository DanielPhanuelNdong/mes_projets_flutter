import 'package:flutter/material.dart';
import 'package:flutter_application_4/elementsGrid.dart';

class GridPage extends StatelessWidget {
  //const GridPage({super.key});
  const GridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: .7,
        children: const [
          ElementsGrid(
            titre: "recommandation",
            image: "images/1.jpg",
          ),
          ElementsGrid(
            titre: "B recommandation",
            image: "images/2.jpg",
          ),
          ElementsGrid(
            titre: "Bonne recommandation",
            image: "images/3.jpg",
          ),
          ElementsGrid(
            titre: "Ma recommandation",
            image: "images/4.jpg",
          ),
          ElementsGrid(
            titre: "Dans recommandation",
            image: "images/3.jpg",
          ),
          ElementsGrid(
            titre: "Bebe recommandation",
            image: "images/2.jpg",
          ),
        ],
      ),
    );
  }
}
