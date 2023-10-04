import 'package:e_pedidos_front/shared/widgets/custom_button.dart';
import 'package:e_pedidos_front/shared/widgets/custom_icon_button.dart';
import 'package:e_pedidos_front/shared/widgets/custom_layout.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return CustomLayout(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(31, 25, 10, 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Categorias',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const Text('Altere e adicione as suas categorias',
                style: TextStyle(
                    fontSize: 13,
                    color: Color.fromRGBO(61, 61, 61, 1),
                    fontWeight: FontWeight.w500)),
            const SizedBox(
              height: 29,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1,
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(54, 148, 178, 1)),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
                child: ListView(
              children: [
                ListTile(
                    leading: CustomIconButton(
                        icon: Icons.remove,
                        backgroundColor: const Color.fromRGBO(255, 148, 148, 1),
                        iconColor: const Color.fromRGBO(255, 0, 0, 1),
                        onTap: () {}),
                    title: const Text('Pratos'),
                    contentPadding: const EdgeInsets.only(bottom: 0)),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(54, 148, 178, 1)),
                ),
              ],
            )),
            Center(
                child: Column(
              children: [
                CustomButton(
                    text: 'Adicionar categoria',
                    backgroundColor: const Color.fromRGBO(54, 148, 178, 1),
                    onPressed: () {}),
                CustomButton(
                    text: 'Remover categoria',
                    backgroundColor: const Color.fromRGBO(54, 148, 178, 1),
                    onPressed: () {})
              ],
            ))
          ],
        ),
      ),
    ));
  }
}
