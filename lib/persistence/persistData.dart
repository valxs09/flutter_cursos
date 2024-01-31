import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<Dog> dogList;

  @override
  void initState() {
    super.initState();
    dogList = [];
  }

  Future<void> insertDog(BuildContext context) async {
    TextEditingController nameController = TextEditingController();
    TextEditingController ageController = TextEditingController();

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Agregar Nuevo Perro'),
          content: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Nombre'),
              ),
              TextField(
                controller: ageController,
                decoration: const InputDecoration(labelText: 'Edad'),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                // Validar y agregar el nuevo perro
                if (nameController.text.isNotEmpty &&
                    ageController.text.isNotEmpty) {
                  var newDog = Dog(
                    id: DateTime.now().millisecondsSinceEpoch,
                    name: nameController.text,
                    age: int.parse(ageController.text),
                  );
                  setState(() {
                    dogList.add(newDog);
                  });
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Agregar'),
            ),
          ],
        );
      },
    );
  }

  Future<void> updateDog(Dog dog) async {
    // Implementar la lógica de actualización si es necesario
    // Aquí puedes abrir un diálogo de edición, por ejemplo.
  }

  Future<void> deleteDog(Dog dog) async {
    setState(() {
      dogList.removeWhere((element) => element.id == dog.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dog List'),
      ),
      body: Center(
        child: dogList.isNotEmpty
            ? DogListWidget(
                dogList: dogList,
                onUpdate: updateDog,
                onDelete: deleteDog,
              )
            : const CircularProgressIndicator(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => insertDog(context),
        tooltip: 'Insertar Perro',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class DogListWidget extends StatelessWidget {
  final List<Dog> dogList;
  final Function(Dog) onUpdate;
  final Function(Dog) onDelete;

  const DogListWidget({
    Key? key,
    required this.dogList,
    required this.onUpdate,
    required this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dogList.length,
      itemBuilder: (context, index) {
        final dog = dogList[index];
        return ListTile(
          title: Text(dog.name),
          subtitle: Text('Age: ${dog.age}'),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () => onUpdate(dog),
              ),
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () => onDelete(dog),
              ),
            ],
          ),
        );
      },
    );
  }
}

class Dog {
  final int id;
  final String name;
  final int age;

  Dog({
    required this.id,
    required this.name,
    required this.age,
  });
}
