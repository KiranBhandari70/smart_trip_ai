import 'package:flutter/material.dart';
import 'package:smart_trip_ai/shared/widgets/custom_text_field.dart';
import 'package:smart_trip_ai/shared/widgets/primary_button.dart';
import '../../../core/utils/validators.dart';
import '../../../shared/widgets/app_logo.dart';
import './register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const AppLogo(width: 140),

                    Container(
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 25,
                            color: Colors.black26,
                            offset: const Offset(0, 15),
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
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                              ),
                            ),

                            const SizedBox(height: 2),

                            const Text(
                              "Continue planning your next adventure.",
                            ),

                            const SizedBox(height: 25),

                            CustomTextField(
                              hintText: "Email",
                              prefixIcon: Icons.mark_email_read,
                              keyboardType: TextInputType.emailAddress,
                              validator: Validators.validateEmail,
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
                                  ),
                                ),
                              ),
                            ),


                            const SizedBox(height: 16),

                            PrimaryButton(
                              title: "Login",
                              onPressed: () {},
                            ),

                            const SizedBox(height: 18),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(" Wanna Make Your Travelling Easier ?",
                                  textAlign: TextAlign.center,
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
                                  child: const Text("Sign Up"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
            )
        )

    );
  }
}