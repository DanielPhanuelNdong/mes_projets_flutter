import 'package:flutter/material.dart';

class ElementsGrid extends StatefulWidget {
  final String titre ;
  final String image;
  
  const ElementsGrid({
    Key? key,
    required this.titre,
    required this.image,
  }) : super(key: key);

  
  @override
  State<ElementsGrid> createState() => _ElementsGridState();
}

class _ElementsGridState extends State<ElementsGrid> {

  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 10),
            ),
          ]),
      child: Column(
        children: [
          Image.asset(
            widget.image,
          ),
          const SizedBox(
            height: 15,
          ),
           Text(
            widget.titre,
            
            style: const TextStyle(
                color: Color.fromARGB(255, 0, 14, 82),
                fontSize: 15,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
