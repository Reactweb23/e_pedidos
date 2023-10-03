import 'package:flutter/material.dart';

class CustomCardMenu extends StatefulWidget {
  const CustomCardMenu({super.key});

  @override
  State<CustomCardMenu> createState() => _CustomCardMenuState();
}

class _CustomCardMenuState extends State<CustomCardMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 19),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromRGBO(54, 148, 178, 1),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(20),
         ),
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Sanduíche de espinafre', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),),
                Text('com queijo prato e molho da casa', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),
                Text(
                  'R\$ 20,99', 
                  style: TextStyle(
                    fontSize: 12, 
                    fontWeight: FontWeight.w500, 
                    color: Color.fromRGBO(23, 160, 53, 1) 
                    ),
                  ),
              ],
            ),
            Image.asset('lib/assets/menu1.png')
          ]
          ),
      ),
    );
  }
}
