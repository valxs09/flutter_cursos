import 'package:flutter/material.dart';

void main() => runApp(const HorizontaList());

class HorizontaList extends StatelessWidget {
  const HorizontaList({super.key});

  @override
  Widget build(BuildContext context) {
    const appName = 'Horizontal List';

    return MaterialApp(
      title: appName,
      home: Scaffold(appBar: AppBar(
        title: const Text(appName),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160,
            color: Colors.indigoAccent,
          ),

                    Container(
            width: 160,
            color: Colors.amber,
          ),

                    Container(
            width: 160,
            color: Colors.pinkAccent,
          ),
                    Container(
            width: 160,
            color: Colors.deepOrangeAccent,
          ),

                    Container(
            width: 160,
            color: Colors.lightGreen,
          ),


                    Container(
            width: 160,
            color: Colors.redAccent,
          ),

                    Container(
            width: 160,
            color: Colors.cyanAccent,
          ),

                    Container(
            width: 160,
            color: Colors.deepPurple,
          ),

        ],
      ),
      ),
    );
  }
}
