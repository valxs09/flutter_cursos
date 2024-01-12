import 'package:flutter/material.dart';

void main() => runApp(const RetrieveText());

class RetrieveText extends StatelessWidget {
  const RetrieveText({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Recuperar texto',
      home: MyFormPersonalizado(),
    );
  }
}

class MyFormPersonalizado extends StatefulWidget {
  const MyFormPersonalizado({super.key});

  @override
  State<MyFormPersonalizado> createState() => _MyFormPersonalizado();
}

class _MyFormPersonalizado extends State<MyFormPersonalizado> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recuperar texto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(myController.text),
            );
          },
        );
      }),
    );
  }
}
