import 'package:flutter/material.dart';
import '../step_card.dart';

class TravelTypeStep extends StatelessWidget {
  final String selectedType;
  final ValueChanged<String?> onChanged;

  const TravelTypeStep({
    super.key,
    required this.selectedType,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return StepCard(
      icon: Icons.flight,
      title: "How are you travelling?",
      child: Column(
        children: [
          _buildRadio("Solo"),
          _buildRadio("Family"),
          _buildRadio("Friends"),
        ],
      ),
    );
  }

  Widget _buildRadio(String text) {
    return RadioListTile<String>(
      title: Text(text),
      value: text,
      groupValue: selectedType,
      onChanged: onChanged,
    );
  }
}
