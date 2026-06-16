import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import '../../features/home/presentation/home_screen.dart';

class Biometric extends StatefulWidget {

  const Biometric({super.key});
  @override
  State<Biometric> createState() => _BiometricState();
}

class _BiometricState extends State<Biometric> {
  final LocalAuthentication auth = LocalAuthentication();
  Future<void> biometricLogin() async {
    try {
      final canAuthenticate =
          await auth.canCheckBiometrics ||
              await auth.isDeviceSupported();

      if(!canAuthenticate){
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Biometric not available"),
          ),
        );
        return;
      }

      final authenticated = await auth.authenticate(
        localizedReason:
        "Login using biometric authentication",
        options: const AuthenticationOptions(
          biometricOnly: true,
          stickyAuth: true,
        ),
      );

      if(authenticated){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context)=>
            const HomeScreen(),
          ),
        );
      }
    }
    catch(e){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Biometric login failed"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: biometricLogin,
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