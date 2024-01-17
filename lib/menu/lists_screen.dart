import 'package:flutter/material.dart';
import '../lists/gridList_screen.dart';
import '../lists/horizontalList_screen.dart';
import '../lists/itemsDifferent_screen.dart';
import 'package:cookbook_salazar/lists/spacedItems_screen.dart';
import '../lists/floatingAppBar_screen.dart';
import '../lists/listsIcons_screen.dart';
import '../lists/longLists_screen.dart';


class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lists Screen'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const GridList()));
              },
              child: const Text('Boton 1')),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HorizontaList()));
              },
              child: const Text('Boton 2')),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DifferentItems(
                    items: List<ListItem>.generate(
                      100,
                      (i) => i % 6 == 0
                          ? HeadingItem('Titulo $i')
                          : MessageItem('Subtitulo $i', 'Descripción $i'),
                    ),
                  ),
                ),
              );
            },
            child: const Text('Boton 3'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SpacedItemsList()));
              },
              child: const Text('Boton 4')),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FloatingBar()));
              },
              child: const Text('Boton 5')),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Lists()));
              },
              child: const Text('Boton 6')),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  LongList( items:List<String>.generate(1000, (i) => 'Objeto $i'))));
              },
              child: const Text('Boton 7')),
        ],
      )),
    );
  }
}
