import 'package:flutter/material.dart';

void main() => runApp(const FormCustom());

class FormCustom extends StatelessWidget {
  const FormCustom({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form estilo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        body: const MyForms(),
      ),
    );
  }
}

class MyForms extends StatelessWidget {
  const MyForms({super.key});

  @override
  Widget build (BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
       const Padding(padding: EdgeInsets.symmetric(horizontal: 5, vertical: 13),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Introduce algo',
          ),
        ),
      ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 16),
          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Nombre de usuario',
        ),

       ),
      
      ) 

      ],
    );
  }

}
