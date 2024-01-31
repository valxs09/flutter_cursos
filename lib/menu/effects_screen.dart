import 'package:flutter/material.dart';
import 'package:cookbook_salazar/effects/download_button.dart';
import 'package:cookbook_salazar/effects/navigation_flow.dart';
import 'package:cookbook_salazar/effects/carousel.dart';
import 'package:cookbook_salazar/effects/parallax.dart';
import 'package:cookbook_salazar/effects/shimmer_loading.dart';
import 'package:cookbook_salazar/effects/staggered_menu.dart';
import 'package:cookbook_salazar/effects/typing_indicator.dart';
import 'package:cookbook_salazar/effects/expandable.dart';
import 'package:cookbook_salazar/effects/chat_bubbles.dart';
import 'package:cookbook_salazar/effects/drag.dart';

class EffectsScreen extends StatelessWidget {
  const EffectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lists Screen'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ExampleCupertinoDownloadButton()));
              },
              child: const Text('Boton 1')),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()));
              },
              child: const Text('Boton 2')),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ExampleInstagramFilterSelection()));
            },
            child: const Text('Boton 3'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                 Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ExampleParallax()));
              },
              child: const Text('Boton 4')),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ExampleUiLoadingAnimation()));
              },
              child: const Text('Boton 5')),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ExampleStaggeredAnimations()));
              },
              child: const Text('Boton 6')),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ExampleIsTyping()));
              },
              child: const Text('Boton 7')),
           const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ExampleExpandableFab()));
              },
              child: const Text('Boton 8')),
           const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ExampleGradientBubbles()));
              },
              child: const Text('Boton 9')),
            const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ExampleDragAndDrop()));
              },
              child: const Text('Boton 10')),
        ],
      )),
    );
  }
}
