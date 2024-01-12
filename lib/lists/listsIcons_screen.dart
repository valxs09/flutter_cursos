import 'package:flutter/material.dart';

void main() => runApp(const Lists());

class Lists extends StatelessWidget {
  const Lists({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Basic List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Mapa'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album de fotos'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Telefono'),
            ),
          ],
        ),
      ),
    );
  }
}