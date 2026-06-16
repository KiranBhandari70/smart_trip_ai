import 'package:flutter/material.dart';
import 'package:smart_trip_ai/shared/widgets/app_background.dart';
import 'package:smart_trip_ai/shared/widgets/custom_text_field.dart';
import 'package:smart_trip_ai/shared/widgets/primary_button.dart';
import '../../../core/utils/validators.dart';
import '../../../shared/widgets/app_logo.dart';
import '../../home/presentation/home_screen.dart';
import './register_screen.dart';
import 'package:local_auth/local_auth.dart';
import '../../../core/services/biometric_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final Biometric biometric = Biometric();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleLogin() {
    if (_formKey.currentState?.validate() ?? false) {
      // Logic for Login
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Login...')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppBackground(
          child: SafeArea(
            child: SingleChildScrollView(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    const AppLogo(width: 160),

                    Container(
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
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [

                            const Text(
                              "Welcome Back!",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              ),
                            ),

                            const SizedBox(height: 2),

                            const Text(
                              "Continue planning your next adventure.",
                              style: TextStyle(fontSize: 11,),
                            ),

                            const SizedBox(height: 16),

                            CustomTextField(
                              hintText: "Email",
                              prefixIcon: Icons.mark_email_read,
                              keyboardType: TextInputType.emailAddress,
                              validator: Validators.validateEmail,
                              textInputAction: TextInputAction.next,
                            ),

                            const SizedBox (height: 16),

                            CustomTextField(
                              hintText: "Password",
                              prefixIcon: Icons.lock_person,
                              obscureText: true,
                              validator: Validators.validatePassword,
                            ),

                            const SizedBox(height: 16),

                            Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {},
                                child: const Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),


                            const SizedBox(height: 16),

                            PrimaryButton(
                              title: "Login",
                              onPressed: _handleLogin,
                            ),

                            const SizedBox(height: 10),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                                  children: [
                                const Text("Don't have an account? ",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                                ),

                                TextButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                        builder: (
                                            context) => const RegisterScreen(),
                                      ),
                                    );
                                  },
                                  child: const Text("Sign Up",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Biometric(),
                  ],
                )
            )
        )
        )
    );
  }
}