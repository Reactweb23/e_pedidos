import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomLayout extends StatelessWidget {
  final Widget child;

  const CustomLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: child, 
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: SvgPicture.asset(
            'lib/assets/bg_bottom.svg', 
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
