import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/validators.dart';
import '../../../shared/widgets/app_logo.dart';
import '../../../shared/widgets/custom_text_field.dart';
import '../../../shared/widgets/primary_button.dart';
import '../../../shared/widgets/app_background.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _handleRegister() {
    if (_formKey.currentState?.validate() ?? false) {
      // Logic for registration
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Registration...')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: SafeArea(
         child: SingleChildScrollView(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const AppLogo(width: 150),

              Container(
                padding: const EdgeInsets.all(30),
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
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const Text(
                    "START YOUR JOURNEY",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 2),

                  const Text(
                    "Plan Smart. Travel Better",
                    style: TextStyle(fontSize: 11,),
                  ),

                  const SizedBox(height: 20),

                  CustomTextField(
                    controller: _nameController,
                    hintText: "Full Name",
                    prefixIcon: Icons.person_4,
                    validator: (value) =>
                        Validators.validateRequired(value, 'Full Name'),
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

                  CustomTextField(
                    controller: _passwordController,
                    hintText: "Password",
                    prefixIcon: Icons.lock_person,
                    obscureText: true,
                    validator: Validators.validatePassword,
                    
                  ),

                  const SizedBox(height: 16),

                  CustomTextField(
                    controller: _confirmPasswordController,
                    hintText: "Confirm Password",
                    prefixIcon: Icons.lock_person_outlined,
                    obscureText: true,
                    validator: (value) {
                      if (value != _passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return Validators.validateRequired(value, 'Confirm Password');
                    },
                  ),

                  const SizedBox(height: 16),

                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 10,
                      ),
                      children: [
                        const TextSpan(
                          text: "By continuing, you agree to our ",
                        ),

                        TextSpan(
                          text: "Terms & Privacy Policy",
                          style: const TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w600,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // open terms page
                            },
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  PrimaryButton(
                    title: "Create Account",
                    onPressed: _handleRegister,
                  ),

                  const SizedBox(height: 10),

                  const Text("OR"),

                  const SizedBox(height: 10),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.g_mobiledata),
                    label: const Text("Continue with Google"),
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account? "),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Sign In"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
 ]       ),
      ),
      )
      )
    );
  }
}