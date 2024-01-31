import 'package:flutter/material.dart';
import 'package:cookbook_salazar/animation/transition.dart';
import 'package:cookbook_salazar/animation/physicSimulation.dart';
import 'package:cookbook_salazar/animation/animateContainer.dart';
import 'package:cookbook_salazar/animation/fade.dart';

class AnimationScreen extends StatelessWidget {
  const AnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Page1()));
              },
              child: const Text('Botón 1'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PhysicsCardDragDemo()));
              },
              child: const Text('Botón 2'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AnimatedContainerApp()));
              },
              child: const Text('Botón 3'),
            ),
             const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              },
              child: const Text('Botón 4'),
            ),
          ],
        ),
      ),
    );
  }
}
