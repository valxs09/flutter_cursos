import 'package:flutter/material.dart';
import 'package:cookbook_salazar/persistence/persistData.dart';
import 'package:cookbook_salazar/persistence/readWrite.dart';
import 'package:cookbook_salazar/persistence/storeKey.dart';

class PersistenceScreen extends StatelessWidget {
  const PersistenceScreen({super.key});

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
                    MaterialPageRoute(builder: (context) => const MyApp()));
              },
              child: const Text('Botón 1'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        FlutterDemo(storage: CounterStorage()),
                  ),
                );
              },
              child: const Text('Botón 2'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyKey()));
              },
              child: const Text('Botón 3'),
            ),
          ],
        ),
      ),
    );
  }
}
