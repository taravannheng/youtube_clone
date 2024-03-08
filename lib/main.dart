import 'package:flutter/material.dart';

// screen imports
import 'screens/home_screen.dart';

void main() => runApp(const Youtube());

class Youtube extends StatelessWidget {
  const Youtube({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}
