import 'package:flutter/material.dart';

void main() => runApp(const SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar ',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar'),
        ),
        body: const SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      onPressed: () {
        final snackBar = SnackBar(
          content: const Text('Ejemplo de texto'),
          action: SnackBarAction(label: 'deshacer', onPressed: () {}),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: const Text('Mostrar esto jaaja'),
    ));
  }
}
