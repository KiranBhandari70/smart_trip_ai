import 'package:flutter/material.dart';
import 'package:smart_trip_ai/features/home/presentation/home_dashboard.dart';
import '../../../shared/components/bottom_navigation.dart';
import '../../history/presentation/trip_history_screen.dart';
import '../../profile/presentation/profile_screen.dart';
import '../../saved_trips/presentation/saved_trips_screen.dart';
import '../../trip_planning/presentation/create_trip_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final List<Widget> pages = [
    const HomeDashboard(),
    const TripPlanScreen(),
    const SavedTripsScreen(),
    const HistoryScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        extendBody: true,
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavBar(
          currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              currentIndex = index;
            });
          },
        ),

      );
    }
  }





