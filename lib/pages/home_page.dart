import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_pedidos_front/shared/widgets/custom_card_table.dart';

class HomePag extends StatefulWidget {
  const HomePag({super.key});

  @override
  State<HomePag> createState() => _HomePagState();
}

class _HomePagState extends State<HomePag> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Home'),
          elevation: 0,
        ),
        drawer: Drawer(
            child: Column(children: [
          UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Colors.orange),
              currentAccountPicture: CircleAvatar(
                /* backgroundColor: Colors.white, */
                child: SvgPicture.asset('lib/assets/logo.svg'),
              ),
              accountName: const Text("E-Peedidos"),
              accountEmail: const Text("email@email.com"))
        ])),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(31, 45, 31, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CardTables(),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Pedidos',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 13,
              ),
              Expanded(
                  child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 21),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                            color: const Color.fromRGBO(54, 148, 178, 1),
                            width: 2.0)),
                    child:  Row(
                      children: [
                         const Text('André - Mesa 01 - Sanduíche de espinafre',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500)),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                  child: SvgPicture.asset('lib/assets/verified_icon.svg'),
                                )
                      ],
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
