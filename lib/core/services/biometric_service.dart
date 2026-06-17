import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import '../../features/home/presentation/home_screen.dart';

class Biometric extends StatefulWidget {
  const Biometric({super.key});

  @override
  State<Biometric> createState() => _BiometricState();
}

class _BiometricState extends State<Biometric> {
  final LocalAuthentication _auth = LocalAuthentication();

  bool _isAuthenticating = false;
  String _message = '';

  Future<void> _authenticate() async {
    if (_isAuthenticating) return;

    try {
      setState(() {
        _isAuthenticating = true;
        _message = '';
      });

      final bool canAuthenticate =
          await _auth.canCheckBiometrics ||
              await _auth.isDeviceSupported();

      if (!canAuthenticate) {
        setState(() {
          _message = 'Biometric authentication is not available.';
        });
        return;
      }

      final bool authenticated = await _auth.authenticate(
        localizedReason: 'Authenticate to continue to Smart Trip AI',
        biometricOnly: true,
        persistAcrossBackgrounding: true,
      );

      if (!mounted) return;

      if (authenticated) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context)=>
            const HomeScreen(),
          ),
        );

        setState(() {
          _message = 'Authentication Successful';
        });
      } else {
        setState(() {
          _message = 'Authentication Failed';
        });
      }
    } catch (e) {
      if (!mounted) return;

      setState(() {
        _message = 'Authentication Error';
      });

      debugPrint('Biometric Error: $e');
    } finally {
      if (mounted) {
        setState(() {
          _isAuthenticating = false;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _authenticate();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _authenticate,
      child: Container(
        padding:
        const EdgeInsets.all(15),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white54,
        ),

        child: const Icon(
          Icons.fingerprint_sharp,
          size:50,
          color:Colors.black87,
        ),
      ),
    );
  }
}