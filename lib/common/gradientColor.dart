import 'package:flutter/material.dart';

class gradientscreen extends StatelessWidget {
  const gradientscreen({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color(0xFF38365D),
                Color(0xFF0A94B0),
              ],
                  stops: [
                0.45,
                0.8
              ])),
          child: child),
    );
  }
}
