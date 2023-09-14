import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        backgroundColor: const Color.fromRGBO(255, 130, 18, 1),
        appBar: AppBar(
          title: const Text('Home')
        ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.orange),
                currentAccountPicture: CircleAvatar(
                  /* backgroundColor: Colors.white, */
                  child: SvgPicture.asset('lib/assets/logo.svg'),
                ),
                accountName: const Text("E-Peedidos"),
                accountEmail: const Text("email@email.com"))
            ])
        ),
        body: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              child: const Card(
                elevation: 4,
                child: Text('card 1'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              child: const Card(
                elevation: 4,
                child: Text('card 1'),
              ),
            )
          ],
        ),
      ));
  }
}