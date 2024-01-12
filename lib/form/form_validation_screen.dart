import 'package:flutter/material.dart';

void main() => runApp(const FormValidation());

class FormValidation extends StatelessWidget {
  const FormValidation({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Validation';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}


class MyCustomForm extends StatefulWidget {

  const MyCustomForm ({super.key});

  @override
  MyCustomFormState createState(){
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm>{
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: (value){
              if (value == null || value.isEmpty){
                return 'Introducir todos los datos';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ElevatedButton(
              onPressed: () {
                if(_formkey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Procesando...')),
                  );
                }
              }, child: const Text('Enviado'),
            ),)
        ],
      )
    );
      
  }
}