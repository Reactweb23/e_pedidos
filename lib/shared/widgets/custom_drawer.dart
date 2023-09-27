import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(children: [
      UserAccountsDrawerHeader(
          decoration: const BoxDecoration(color: Colors.orange),
          currentAccountPicture: CircleAvatar(
            /* backgroundColor: Colors.white, */
            child: SvgPicture.asset('lib/assets/logo.svg'),
          ),
          accountName: const Text("E-Peedidos"),
          accountEmail: const Text("email@email.com"))
    ]));
  }
}
