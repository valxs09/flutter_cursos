import 'package:flutter/material.dart';

void main() => runApp(const HeroApp());

class HeroApp extends StatelessWidget {
  const HeroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Prueba',
      home: MainSrceen(),
    );
  }
}

class MainSrceen extends StatelessWidget {
  const MainSrceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina principal'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SecondScreen()));
        },
        child: Hero(
          tag: 'image',
          child: Image.network(
              'https://i.pinimg.com/236x/d0/22/8e/d0228ef51d62c6a287902d717b2d3f5f.jpg'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },

        child: Center(child: Hero(
          tag: 'image',
          child: Image.network('https://i.pinimg.com/236x/d0/22/8e/d0228ef51d62c6a287902d717b2d3f5f.jpg'),
        )),
      ),
    );
  }
}
