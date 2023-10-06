import 'package:e_pedidos_front/shared/widgets/custom_avatar.dart';
import 'package:e_pedidos_front/shared/widgets/custom_layout.dart';
import 'package:flutter/material.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({super.key});

  @override
  State<MyAccountPage> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  @override
  Widget build(BuildContext context) {
    return const CustomLayout(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(31, 25, 31, 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Minha conta',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text('Adicione o novo produto do seu cardápio',
                style: TextStyle(
                    fontSize: 13,
                    color: Color.fromRGBO(61, 61, 61, 1),
                    fontWeight: FontWeight.w500)),
            SizedBox(
              height: 37,
            ),
            Center(
                child: Column(
              children: [
                CustomAvatar(),
                SizedBox(
                  height: 35,
                ),
                Row(children: [
                    Text("Nome da empresa"),
                    SizedBox(
                      width: 48,
                    ),
                    Text("EcoVibe Bistrô")
                ]),
                Row(
                  children: [
                  Text("Responsável"),
                  SizedBox(
                    width: 48,
                  ),
                  Text("Paulo Farias")
                ]),
                Row(children: [
                  Text("E-mail"),
                  SizedBox(
                    width: 48,
                  ),
                  Text("ecovibebistro@gmail.com")
                ]),
                Row(children: [
                  Text("Celular"),
                  SizedBox(
                    width: 48,
                  ),
                  Text("(81)99627-0938")
                ]),
                Row(children: [
                  Text("CPF/CNPJ"),
                  SizedBox(
                    width: 48,
                  ),
                  Text("0000000000")
                ]),
              ],
            ))
          ],
        ),
      ),
    ));
  }
}
