import 'package:flutter/material.dart';

void main() => runApp(const FloatingBar());

class FloatingBar extends StatelessWidget {
  const FloatingBar({super.key});

  @override
  Widget build(BuildContext context) {
    const titulo = 'Barra de navegación';

    return MaterialApp(
      title: titulo,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              title: Text(titulo),
              floating: true,
              flexibleSpace: Placeholder(),
              expandedHeight: 150,
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(title: Text('Objeto #$index')),
              childCount: 100,
            ))
          ],
        ),
      ),
    );
  }
}
