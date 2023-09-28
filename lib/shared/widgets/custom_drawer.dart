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
            maxRadius: double.tryParse('44'),
            minRadius: double.tryParse('44'),
            backgroundColor: const Color.fromRGBO(255, 219, 126, 1),
          ),
          accountName: const Text(
            "EcoVibe Bistrô",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white),
          ),
          accountEmail: const Text(
            "ecovibebistro@gourmet.com.br",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 14, color: Colors.white),
          )),
           ListTile(
            onTap: (){
              Navigator.of(context).pushNamed('/orders');
            },
            leading: const Icon(Icons.description_sharp),
            title: const Text("Pedidos",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 18, color: Color.fromRGBO(131, 131, 131, 1)),
          )),
           ListTile(
            onTap: (){
              Navigator.of(context).pushNamed('/tables');
            },
            leading: const Icon(Icons.table_bar_rounded),
            title: const Text("Mesas",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 18, color: Color.fromRGBO(131, 131, 131, 1)),
          )),
          const ListTile(
            leading: Icon(Icons.star),
            title: Text("Destaques",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 18, color: Color.fromRGBO(131, 131, 131, 1)),
          )),
          const ListTile(
            leading: Icon(Icons.add),
            title: Text("Novo Produto",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 18, color: Color.fromRGBO(131, 131, 131, 1)),
          )),
          const ListTile(
            leading: Icon(Icons.menu_book_outlined),
            title: Text("Meu cardápio",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 18, color: Color.fromRGBO(131, 131, 131, 1)),
          )),
          const ListTile(
            leading: Icon(Icons.category_outlined),
            title: Text("Nova categoria",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 18, color: Color.fromRGBO(131, 131, 131, 1)),
          )),
          const ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Minha conta",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 18, color: Color.fromRGBO(131, 131, 131, 1)),
          )),
          const ListTile(
            leading: Icon(Icons.shopify_sharp),
            title: Text("Resumo de Vendas",
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 18, color: Color.fromRGBO(131, 131, 131, 1)),
          )),
          SvgPicture.asset('lib/assets/epedidos.svg')
    ]));
  }
}
