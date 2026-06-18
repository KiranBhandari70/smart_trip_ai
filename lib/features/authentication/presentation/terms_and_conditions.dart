import 'package:flutter/material.dart';
import 'package:smart_trip_ai/shared/widgets/card.dart';
import '../../../shared/widgets/app_background.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: SafeArea(child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
              children: [
          Cards(
            child: Form(
              child: Column(
                children: [
                  const Text(
                    "Smart Trip AI — Terms & Conditions",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  const SizedBox(height: 2),

                  const Text(
                    "Effective Date: 1st June, 2026 ",
                    style: TextStyle(fontSize: 11,),
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    '''
Welcome to Smart Trip AI ("App", "Service", "we", "us", or "our"). Smart Trip AI is an AI-powered travel planning application designed to help users create personalized travel plans, manage trip budgets, discover destinations, and organize travel experiences.

By downloading, accessing, or using Smart Trip AI, you agree to these Terms & Conditions. If you do not agree with these terms, please do not use the Service.

1. Acceptance of Terms

By creating an account, accessing, or using Smart Trip AI, you confirm that you have read, understood, and agreed to these Terms & Conditions and our Privacy Policy.

We may update these Terms from time to time. Continued use of the App after changes means you accept the updated terms.

2. Description of Service

Smart Trip AI provides users with tools including:

A. AI-generated travel itineraries
B. Personalized destination recommendations
C. Budget planning and optimization
D. Activity, food, accommodation, and transport suggestions
E. Trip saving and history management
F. Exporting itineraries into downloadable formats
G. Travel planning assistance based on user preferences

Smart Trip AI acts as a digital planning assistant and does not directly provide transportation, accommodation, booking, or travel services.

3. AI-Generated Content Disclaimer

Smart Trip AI uses artificial intelligence to generate recommendations and travel plans.

You understand that:

A. AI suggestions may not always be accurate or up to date.
B. Travel information such as prices, availability, opening hours, and local conditions may change.
C. Users should verify important information before making travel decisions.
D. Smart Trip AI is not responsible for losses caused by relying solely on AI-generated recommendations.

4. User Accounts

To access certain features, users may need to create an account.

You agree to:

A. Provide accurate information.
B. Keep your login credentials secure.
C. Notify us if you suspect unauthorized account access.
D. Be responsible for activity performed through your account.

You must not:

A. Create accounts using false information.
B. Attempt to access another user's account.
C. Misuse the App for illegal purposes.

5. User Responsibilities

When using Smart Trip AI, you agree not to:

A. Use the App for unlawful activities.
B. Upload harmful, offensive, or malicious content.
C. Attempt to reverse engineer, modify, or copy the application.
D. Interfere with the security or functionality of the Service.

6. Travel Information and Third-Party Services

Smart Trip AI may provide information from third-party sources such as:

A. Maps
B. Travel providers
C. Accommodation platforms
D. Transportation services
E. Local attractions

We do not control third-party services and are not responsible for their availability, accuracy, pricing, policies, or actions.

Any bookings or purchases made through external providers are subject to their own terms and conditions.

7. Budget and Cost Estimates

Smart Trip AI may provide estimated travel costs based on user preferences.

Users acknowledge that:

A. Prices are estimates only.
B. Actual costs may vary.
C. Currency rates, taxes, availability, and seasonal changes may affect expenses.

8. Privacy and Data Usage

We may collect and process information required to provide our services, including:

A. Account information
B. Travel preferences
C. Saved trips
D. App usage data

Your information will be handled according to our Privacy Policy.

9. Intellectual Property

All content, design, software, branding, and features of Smart Trip AI are owned by or licensed to Smart Trip AI.

You may not:

A. Copy the application.
B. Sell or redistribute the Service.
C. Use our branding without permission.

10. Subscription and Payments

If Smart Trip AI introduces paid features:

A. Payments will be processed through approved payment providers.
B. Subscription fees and renewal terms will be displayed before purchase.
C. Refund policies may follow applicable platform rules.

11. Service Availability

We aim to keep Smart Trip AI available; however, we do not guarantee:

A. Continuous availability
B. Error-free operation
C. Permanent access to stored data

We may update, modify, or discontinue features when necessary.

12. Limitation of Liability

Smart Trip AI is provided as a planning tool.

We are not responsible for:

A. Missed flights
B. Travel disruptions
C. Incorrect recommendations
D. Third-party service failures
E. Financial losses caused by travel decisions

Users are responsible for making final travel decisions.

13. Account Suspension or Termination

We may suspend or terminate accounts if users:

A. Violate these Terms
B. Abuse the Service
C. Engage in fraudulent or harmful activities

Users may stop using the Service at any time.

14. Changes to the Application

We may improve, update, or change Smart Trip AI features without prior notice.
Updates may be required to continue using the Service.

15. Contact Us

If you have questions regarding these Terms & Conditions:

Smart Trip AI
Email: smarttripai@gmail.com

By using Smart Trip AI, you acknowledge that you have read, understood, and agreed to these Terms & Conditions.
                    '''
                    ,style: TextStyle(fontSize: 11,),
                    textAlign: TextAlign.justify,
                  )
                ]
            ),
        ),
          ),
              ],
          ),
      ),
        )
      )
    );
  }
}
