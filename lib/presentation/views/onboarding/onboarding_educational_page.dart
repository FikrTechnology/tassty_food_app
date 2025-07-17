part of '../pages.dart';

class OnboardingEducationalPage extends StatefulWidget {
  const OnboardingEducationalPage({super.key});

  @override
  State<OnboardingEducationalPage> createState() => _OnboardingEducationalPageState();
}

class _OnboardingEducationalPageState extends State<OnboardingEducationalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Educational Page',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}