import 'package:flutter/material.dart';
import '../../../../shared/widgets/custom_text_field.dart';
import '../step_card.dart';

class DurationStep extends StatelessWidget {
  final String value;
  final ValueChanged<String> onChanged;

  const DurationStep({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return StepCard(
      icon: Icons.calendar_month,
      title: "Trip duration",
      child: CustomTextField(
        hintText: "Number of days",
        prefixIcon: Icons.timer,
        keyboardType: TextInputType.number,
        onChanged: onChanged,
      ),
    );
  }
}
