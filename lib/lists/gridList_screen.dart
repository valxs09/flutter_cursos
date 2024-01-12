import 'package:flutter/material.dart';

void main() => runApp(const GridList());

class GridList extends StatelessWidget {
  const GridList({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'GridView';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(300, (index) {
            return Center(
              child: Text(
                '$index',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            );
          }),
        ),
      ),
    );
  }
}
