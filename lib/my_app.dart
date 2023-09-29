import 'package:e_pedidos_front/pages/emphasis_page.dart';
import 'package:e_pedidos_front/pages/home_page.dart';
import 'package:e_pedidos_front/pages/login_page.dart';
import 'package:e_pedidos_front/pages/new_product_page.dart';
import 'package:e_pedidos_front/pages/orders_page.dart';
import 'package:e_pedidos_front/pages/recover_password.dart';
import 'package:e_pedidos_front/pages/register_page.dart';
import 'package:e_pedidos_front/pages/tables_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/register': (context)=>const RegisterPage(),
        '/recoverPassword' :(context)=> const RecoverPassword(),
        '/home': (context) => const HomePag(),
        '/orders': (context) => const OrdersPage(),
        '/tables' : (context) => const TablePage(),
        '/emphasis' : (context) => const EmphasisPage(),
        '/newproduct' : (context) => const NewProductPage(),
      }
    );
  }
}
