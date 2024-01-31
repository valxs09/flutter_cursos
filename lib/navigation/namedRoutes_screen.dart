import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Routes Demo',
      home: OtherScreen(),
    ),
  );
}

class OtherScreen extends StatelessWidget {
  const OtherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primero'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            navigateToSecondScreen(context);
          },
          child: const Text('Launch screen'),
        ),
      ),
    );
  }

  void navigateToSecondScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SecondScreen()),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segundo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            navigateToThirdScreen(context);
          },
          child: const Text('Go to third screen!'),
        ),
      ),
    );
  }

  void navigateToThirdScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ThirdScreen()),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tercero'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('¡Vuelve!'),
        ),
      ),
    );
  }
}
