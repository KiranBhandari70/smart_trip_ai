import 'package:flutter/material.dart';
import 'package:smart_trip_ai/features/authentication/widgets/card.dart';

import '../../../core/utils/validators.dart';
import '../../../shared/widgets/app_background.dart';
import '../../../shared/widgets/custom_text_field.dart';
import '../../../shared/widgets/primary_button.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 240),
                Cards(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const Text(
                          "Forgot Password",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),

                        const SizedBox(height: 2),

                        const Text(
                          "Enter your email address and we'll send you a link to reset your password.",
                          style: TextStyle(fontSize: 11,),
                        ),

                        const SizedBox(height: 16),

                        CustomTextField(
                          controller: _emailController,
                          hintText: "Email",
                          prefixIcon: Icons.mark_email_read,
                          keyboardType: TextInputType.emailAddress,
                          validator: Validators.validateEmail,
                        ),

                        const SizedBox(height: 16),

                        PrimaryButton(
                          title: "Send Link",
                          onPressed: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              //
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Processing...')),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
