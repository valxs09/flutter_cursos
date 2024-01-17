import 'package:flutter/material.dart';
import 'package:cookbook_salazar/navigation/widgetAcross_screen.dart';
import 'package:cookbook_salazar/navigation/newAndBack_screen.dart';
import 'package:cookbook_salazar/navigation/namedRoutes_screen.dart';
import 'package:cookbook_salazar/navigation/returnData_screen.dart';
import 'package:cookbook_salazar/navigation/sendData_screen.dart';

class NavegationScreen extends StatelessWidget {
  const NavegationScreen({super.key});

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
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FirstRoute()));
              },
              child: const Text('Boton 2')),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OtherScreen()));
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReturnScreen()));
              },
              child: const Text('Boton 5')),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TodosScreen(
                      todos: List.generate(
                        20,
                        (i) => Todo(
                          'Todo $i',
                          'A description of what needs to be done for Todo $i',
                        ),
                      ),
                    ),
                  ),
                );
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
