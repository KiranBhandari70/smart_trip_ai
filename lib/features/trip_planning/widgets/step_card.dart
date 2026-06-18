import 'package:flutter/material.dart';
import '../../../shared/widgets/card.dart';

class StepCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget child;

  const StepCard({
    super.key,
    required this.icon,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Cards(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 40,
            child: Icon(icon, size: 40, color: Theme.of(context).primaryColor),
          ),
          const SizedBox(height: 20),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          child,
        ],
      ),
    );
  }
}
