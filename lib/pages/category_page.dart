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
    return const CustomLayout(
      child: Scaffold(
        body: Text('categoria'),
      )
      );
  }
}