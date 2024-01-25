import 'package:flutter/material.dart';
import 'package:onboard_animation/onboarding_screen.dart';

void main() {
      // Add this
    PWAInstall().setup(installCallback: () {
      debugPrint('¡APLICACION INSTALADA!');
    });

    // Check if installation prompt is enabled
    if (PWAInstall().installPromptEnabled) {
      // Call the installation prompt
      PWAInstall().promptInstall_();
    }

    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pruebas Bipp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnboardingScreen(),
    );
  }
}
