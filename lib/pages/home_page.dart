import 'package:e_pedidos_front/shared/widgets/custom_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_pedidos_front/shared/widgets/custom_card_table.dart';
import 'package:e_pedidos_front/shared/widgets/custom_card_orders.dart';

class HomePag extends StatefulWidget {
  const HomePag({super.key});

  @override
  State<HomePag> createState() => _HomePagState();
}

class _HomePagState extends State<HomePag> {
  @override
  Widget build(BuildContext context) {
    return CustomLayout(
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
          padding: const EdgeInsets.fromLTRB(31, 25, 31, 100),
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
                children: const [
                  CardOrders(),
                  CardOrders(),
                  CardOrders(),
                  CardOrders(),
                  CardOrders(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
