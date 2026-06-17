import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final Widget child;

  const Cards({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black12,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: child,
    );
  }
}