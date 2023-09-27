import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardOrders extends StatefulWidget {
  const CardOrders({super.key});

  @override
  State<CardOrders> createState() => _CardOrdersState();
}

class _CardOrdersState extends State<CardOrders> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 14),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
                color: const Color.fromRGBO(54, 148, 178, 1), width: 2.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('André - Mesa 01 - Sanduíche de espinafre',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700)),
            SvgPicture.asset('lib/assets/verified_icon.svg'),
          ],
        ),
      ),
    );
  }
}
