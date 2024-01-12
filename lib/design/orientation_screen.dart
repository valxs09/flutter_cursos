import 'package:flutter/material.dart';

void main() => runApp(const OrientationDemo());

class OrientationDemo extends StatelessWidget {
  const OrientationDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Orientacion',
      home: Scaffold(
          appBar: AppBar(
        title: const Text('Orientacion'),
      ),
        body: const OrientationList(title: 'Orientacion'),
      ),
    );
  }
}

class OrientationList extends StatelessWidget {
  final String title;

  const OrientationList({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return Scaffold(
          body: GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Objeto $index',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            );
          })
        ),
      );
    });
  }
}
