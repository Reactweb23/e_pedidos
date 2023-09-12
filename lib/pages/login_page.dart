import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange,
        body: ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: const EdgeInsets.all(17),
                  decoration: const BoxDecoration(
                    borderRadius:  BorderRadius.all(Radius.circular(17)),
                    color: Colors.white
                  ),
                  child: Column(
                    children: [
                      const Text('Preencha suas informações'),
                      const TextField(),
                      const TextField(),
                      TextButton(onPressed: () {}, child: const Text('Entrar'))
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
