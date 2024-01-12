import 'package:flutter/material.dart';
import 'form/form_validation_screen.dart';
import 'form/form_custom_screen.dart';
import 'form/focus_screen.dart';
import 'form/Handle_changes_screen.dart';
import 'form/retrieve_text.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FormValidation()));
              },
              child: const Text('Botón 1'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FormCustom()));
              },
              child: const Text('Botón 2'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FocusForm()));
              },
              child: const Text('Botón 3'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HandleChanges()));
              },
              child: const Text('Botón 4'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RetrieveText()));
              },
              child: const Text('Botón 5'),
            ),
          ],
        ),
      ),
    );
  }
}
