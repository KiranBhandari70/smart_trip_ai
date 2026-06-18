import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(45),

          child: BottomNavigationBar(
            iconSize: 30,
            currentIndex: currentIndex,
            onTap: onTap,

            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white10,
            elevation: 0,

            showSelectedLabels: true,
            showUnselectedLabels: true,

            selectedItemColor: Colors.indigo,
            unselectedItemColor: Colors.blueGrey,

            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: "Home",
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline),
                activeIcon: Icon(Icons.add_circle),
                label: "Plan",
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline),
                activeIcon: Icon(Icons.bookmark),
                label: "Saved",
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                activeIcon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),

      ),
    );
  }
}