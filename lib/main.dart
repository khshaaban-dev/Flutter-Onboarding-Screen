import 'package:flutter/material.dart';
import 'package:onboarding_screen/Screens/home/home_screen.dart';
import 'package:onboarding_screen/Screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
         scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.purple,
      ),
      routes: {
        HomeScreen.route: (context) => const HomeScreen(),
      },
      home: const OnboardingScreen(),
    );
  }
}
