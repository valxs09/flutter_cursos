import 'package:flutter/material.dart';
import 'design/menu_screen.dart';
import 'menu/design_screen.dart';
import 'menu/form_screen.dart';
import 'menu/lists_screen.dart';
import 'menu/navigation_screen.dart';
import 'menu/networking_screen.dart';
import 'menu/persistence_screen.dart';
import 'menu/gesture_screen.dart';
import 'menu/effects_screen.dart';
import 'menu/animation_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/', // Establecer la ruta inicial
      routes: {
        '/': (context) => const MyHomePage(
            title: 'Inicio'), // Configurar la ruta para MyHomePage
        'menu_screen': (context) =>
            const MenuScreen(), // Configurar la ruta para menu_screen.dart
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 16), // Añadir espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DesignScreen()));
              },
              child: const Text('Diseño'),
            ),
            const SizedBox(height: 16), // Añadir espacio entre los botones
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FormScreen()));
              },
              child: const Text('Forms'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ListScreen()));
                },
                child: const Text('Listas')
            ),
             const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NavegationScreen()));
                },
                child: const Text('Navegation')
            ),
             const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NetworkingScreen()));
                },
                child: const Text('Networking')
            ),
             const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const PersistenceScreen()));
                },
                child: const Text('Persistence')
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const GestureScreen()));
                },
                child: const Text('Gesture')
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const EffectsScreen()));
                },
                child: const Text('Effects')
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AnimationScreen()));
                },
                child: const Text('Animation')
            ),
          ],
        ),
      ),
    );
  }
}
