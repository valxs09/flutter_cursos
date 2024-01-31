import 'package:flutter/material.dart';
import 'package:cookbook_salazar/gesture/addMaterial.dart';
import 'package:cookbook_salazar/gesture/handleTaps.dart';
import 'package:cookbook_salazar/gesture/swipe.dart';


class GestureScreen extends StatelessWidget {
  const GestureScreen({super.key});

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
                    MaterialPageRoute(builder: (context) => const MyAdd()));
              },
              child: const Text('Botón 1'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
               Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              },
              child: const Text('Botón 2'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MySwipe()));
              },
              child: const Text('Botón 3'),
            ),
          ],
        ),
      ),
    );
  }
}
