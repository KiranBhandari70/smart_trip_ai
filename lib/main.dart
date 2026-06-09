import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:smart_trip_ai/core/theme/app_theme.dart';
import 'package:smart_trip_ai/features/authentication/presentation/register_screen.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const SmartTripAI());
}

class SmartTripAI extends StatefulWidget {
  const SmartTripAI({super.key});

  @override
  State<SmartTripAI> createState() => _SmartTripAIState();
}

class _SmartTripAIState extends State<SmartTripAI> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 3));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Trip AI',
      theme: AppTheme.lightTheme,
      home: const RegisterScreen(),
    );
  }
}


