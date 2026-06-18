import 'package:flutter/material.dart';
import '../widgets/trip_progress_bar.dart';
import '../widgets/steps/destination_step.dart';
import '../widgets/steps/budget_step.dart';
import '../widgets/steps/duration_step.dart';
import '../widgets/steps/travel_type_step.dart';
import '../widgets/steps/interests_step.dart';

class TripPlanScreen extends StatefulWidget {
  const TripPlanScreen({super.key});

  @override
  State<TripPlanScreen> createState() => _TripPlanScreenState();
}

class _TripPlanScreenState extends State<TripPlanScreen> {
  int currentStep = 0;
  String destination = "";
  String budget = "";
  String duration = "";
  String travelType = "";
  List<String> interests = [];

  void nextStep() {
    if (currentStep < 4) {
      setState(() {
        currentStep++;
      });
    } else {
      generateTrip();
    }
  }

  void generateTrip() {
    // This will be replaced with actual trip generation logic later
    debugPrint("Destination: $destination");
    debugPrint("Budget: $budget");
    debugPrint("Duration: $duration");
    debugPrint("Travel Type: $travelType");
    debugPrint("Interests: $interests");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              TripProgressBar(currentStep: currentStep),
              const SizedBox(height: 40),
              Expanded(
                child: Center(
                  child: buildStep(),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  onPressed: nextStep,
                  child: Text(
                    currentStep == 4 ? "Generate Trip" : "Continue",
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildStep() {
    switch (currentStep) {
      case 0:
        return DestinationStep(
          value: destination,
          onChanged: (v) => setState(() => destination = v),
        );
      case 1:
        return BudgetStep(
          value: budget,
          onChanged: (v) => setState(() => budget = v),
        );
      case 2:
        return DurationStep(
          value: duration,
          onChanged: (v) => setState(() => duration = v),
        );
      case 3:
        return TravelTypeStep(
          selectedType: travelType,
          onChanged: (v) => setState(() => travelType = v ?? ""),
        );
      case 4:
        return InterestsStep(
          selectedInterests: interests,
          onToggle: (interest, isSelected) {
            setState(() {
              if (isSelected) {
                interests.add(interest);
              } else {
                interests.remove(interest);
              }
            });
          },
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
