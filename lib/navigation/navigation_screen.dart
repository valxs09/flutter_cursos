import 'package:flutter/material.dart';
import 'package:cookbook_salazar/navigation/widgetAcross_screen.dart';
import 'package:cookbook_salazar/navigation/newAndBack_screen.dart';
import 'package:cookbook_salazar/navigation/namedRoutes_screen.dart';



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
                    MaterialPageRoute(builder: (context) => const HeroApp()));
              },
              child: const Text('Boton 1')),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const FirstRoute()));
              },
              child: const Text('Boton 2')),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {            
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const FirstScreen ()));
              
            },
            child: const Text('Boton 3'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
               onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const ()));
              },
              child: const Text('Boton 4')),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const ()));
              },
              child: const Text('Boton 5')),
          const SizedBox(height: 16),
          ElevatedButton(
               onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const ()));
              },
              child: const Text('Boton 6')),
          const SizedBox(height: 16),
          ElevatedButton(
               onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const ()));
              },
              child: const Text('Boton 7')),
              const SizedBox(height: 16),
           ElevatedButton(
               onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const ()));
              },
              child: const Text('Boton 8')),
        ],
      )),
    );
  }
}
