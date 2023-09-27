import 'package:flutter/material.dart';

class CustomContainerView extends StatelessWidget {
  final LinearGradient? gradient;
  final Widget? child;
  final EdgeInsetsGeometry? padding;

  const CustomContainerView({super.key, required this.gradient, this.child, required this.padding});

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: padding,
      width: width * 0.45,
      height: 97,
      decoration: BoxDecoration(
        color: const Color(0xFF191B32),
        borderRadius: BorderRadius.circular(15),
        gradient: gradient,
      ),
      child: child,
    );
  }
}
