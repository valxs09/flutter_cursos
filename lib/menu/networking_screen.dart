import 'package:flutter/material.dart';
import 'package:cookbook_salazar/networking/fetchData_screen.dart';
import 'package:cookbook_salazar/networking/deleteData.dart';
import 'package:cookbook_salazar/networking/WebSockets.dart';
import 'package:cookbook_salazar/networking/authenticated_screen.dart';
import 'package:cookbook_salazar/networking/jsonBackground.dart';
import 'package:cookbook_salazar/networking/sendData.dart';
import 'package:cookbook_salazar/networking/updateData.dart';



class NetworkingScreen extends StatelessWidget {
  const NetworkingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lisbts Screen'),
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
              child: const Text('Boton 1')),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DeleteData()));
              },
              child: const Text('Boton 2')),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const WebSockets()));
            },
            child: const Text('Boton 3'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Autenticaion()));
              },
              child: const Text('Boton 4')),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyJson()));
              },
              child: const Text('Boton 5')),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyDatas()));
              },
              child: const Text('Boton 6')),
          const SizedBox(height: 16),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UpdateDatas()));
              },
              child: const Text('Boton 7')),
        ],
      )),
    );
  }
}
