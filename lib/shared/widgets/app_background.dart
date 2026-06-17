import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  final Widget child;

  const AppBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,

      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFF8FAFC),
            Color(0xFFE0F2FE),
            Color(0xFFF0FDFA),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),

      child: Stack(
        children: [

          // Top blue ambient glow
          Positioned(
            top: -120,
            right: -100,
            child: _softBlob(
              size: 320,
              color: Color(0xFF38BDF8),
            ),
          ),


          // Bottom green ambient glow
          Positioned(
            bottom: -140,
            left: -120,
            child: _softBlob(
              size: 350,
              color: Color(0xFF34D399),
            ),
          ),


          // Center subtle purple AI glow
          Positioned(
            top: 250,
            left: -80,
            child: _softBlob(
              size: 180,
              color: Color(0xFF818CF8),
            ),
          ),


          child,
        ],
      ),
    );
  }


  Widget _softBlob({
    required double size,
    required Color color,
  }) {

    return Container(
      width: size,
      height: size,

      decoration: BoxDecoration(
        shape: BoxShape.circle,

        color: color.withValues(
          alpha: 0.12,
        ),

        boxShadow: [

          BoxShadow(
            color: color.withValues(
              alpha: 0.20,
            ),

            blurRadius: 120,
            spreadRadius: 40,
          ),

        ],
      ),
    );
  }
}