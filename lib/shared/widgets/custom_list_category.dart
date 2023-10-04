import 'package:flutter/material.dart';
import 'package:e_pedidos_front/shared/widgets/custom_icon_button.dart';

class CustomListCategory extends StatelessWidget {
  const CustomListCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButton(
            icon: Icons.remove,
            backgroundColor: const Color.fromRGBO(255, 148, 148, 1),
            iconColor: const Color.fromRGBO(255, 0, 0, 1),
            onTap: () {}),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pratos',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 1,
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(54, 148, 178, 1)),
            ),
          ],
        ),
      ],
    );
  }
}
