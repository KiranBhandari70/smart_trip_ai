import 'package:flutter/material.dart';

class TripProgressBar extends StatelessWidget {
  final int currentStep;
  final int totalSteps;

  const TripProgressBar({
    super.key,
    required this.currentStep,
    this.totalSteps = 5,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalSteps,
        (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          height: 6,
          width: 40,
          decoration: BoxDecoration(
            color: index <= currentStep
                ? Theme.of(context).primaryColor
                : Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
