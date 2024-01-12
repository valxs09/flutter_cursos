import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const FuenteDemo());

class FuenteDemo extends StatelessWidget {
  const FuenteDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ejemplo de Google Fonts',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ejemplo de Google Fonts')),
      body: Center(
        child: Text(
          'Usando la fuente Raleway',
          style: GoogleFonts.raleway(),
        ),
      ),
    );
  }
}
