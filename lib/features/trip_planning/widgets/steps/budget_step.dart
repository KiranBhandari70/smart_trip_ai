import 'package:flutter/material.dart';
import '../../../../shared/widgets/custom_text_field.dart';
import '../step_card.dart';

class BudgetStep extends StatelessWidget {
  final String value;
  final ValueChanged<String> onChanged;

  const BudgetStep({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return StepCard(
      icon: Icons.account_balance_wallet,
      title: "What's your budget?",
      child: CustomTextField(
        hintText: "Enter amount",
        prefixIcon: Icons.attach_money,
        keyboardType: TextInputType.number,
        onChanged: onChanged,
      ),
    );
  }
}
