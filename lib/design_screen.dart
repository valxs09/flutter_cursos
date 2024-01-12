import 'package:flutter/material.dart';
import 'design/snackBar.dart';
import 'design/menu_screen.dart';
import 'design/orientation_screen.dart';
import 'design/themes_screen.dart';
import 'design/tabs_screen.dart';
import 'design/package_screen.dart';
import 'design/customFont_screen.dart';

class DesignScreen extends StatelessWidget {
  const DesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Design Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MenuScreen()));
              },
              child: const Text('Botón 1'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SnackBarDemo()));
              },
              child: const Text('Botón 2'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FuenteDemo()));
              },
              child: const Text('Botón 3'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OrientationDemo()));
              },
              child: const Text('Botón 4'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CustomFont()));
              },
              child: const Text('Botón 5'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ThemesDemo()));
              },
              child: const Text('Botón 6'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TabDemo()));
              },
              child: const Text('Botón 7'),
            ),
          ],
        ),
      ),
    );
  }
}
