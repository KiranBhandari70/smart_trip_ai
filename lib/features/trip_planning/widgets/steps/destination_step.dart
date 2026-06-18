import 'package:flutter/material.dart';
import '../../../../shared/widgets/custom_text_field.dart';
import '../step_card.dart';

class DestinationStep extends StatelessWidget {
  final String value;
  final ValueChanged<String> onChanged;

  const DestinationStep({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return StepCard(
      icon: Icons.location_on,
      title: "Where are you going?",
      child: CustomTextField(
        hintText: "Enter destination",
        prefixIcon: Icons.search,
        onChanged: onChanged,
      ),
    );
  }
}
