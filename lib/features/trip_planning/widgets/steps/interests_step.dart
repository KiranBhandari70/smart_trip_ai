import 'package:flutter/material.dart';
import '../step_card.dart';

class InterestsStep extends StatelessWidget {
  final List<String> selectedInterests;
  final Function(String, bool) onToggle;

  const InterestsStep({
    super.key,
    required this.selectedInterests,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return StepCard(
      icon: Icons.interests,
      title: "Choose your interests",
      child: Column(
        children: [
          _buildCheck("Adventure"),
          _buildCheck("Food"),
          _buildCheck("Culture"),
          _buildCheck("Nature"),
        ],
      ),
    );
  }

  Widget _buildCheck(String text) {
    return CheckboxListTile(
      title: Text(text),
      value: selectedInterests.contains(text),
      onChanged: (v) {
        if (v != null) {
          onToggle(text, v);
        }
      },
    );
  }
}
