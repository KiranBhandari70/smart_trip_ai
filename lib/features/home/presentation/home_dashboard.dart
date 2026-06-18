import 'package:flutter/material.dart';

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(child:
      Column(
        children: [
          Text("Meow Meow")

        ],
      ),
      ),
      );
  }
}