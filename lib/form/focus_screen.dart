import 'package:flutter/material.dart';

void main() => runApp(const FocusForm());

class FocusForm extends StatelessWidget {
  const FocusForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Texto enfocado',
      home: MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyForm();
}

class _MyForm extends State<MyForm> {
  late FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text('Texto enfocado'),
      ),

      body: Padding(
      padding: const EdgeInsets.all(13),
      child:  Column(
        children: [
          const TextField(
            autofocus: true,
          ),

          TextField(
            focusNode: myFocusNode,
          ),

        ],
      )
      ),
    );
  }
}
