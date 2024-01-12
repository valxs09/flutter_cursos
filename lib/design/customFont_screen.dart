import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const CustomFont ());

class CustomFont extends StatelessWidget {
  const CustomFont({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Personalizar Fuente'),
        ),
        body: Center(
            child: Text(
          'Holaaa esto es un texto',
          style: GoogleFonts.bungeeSpice(
          textStyle: const TextStyle(fontSize: 30) ),
        )),
      ),
    );
  }
}
