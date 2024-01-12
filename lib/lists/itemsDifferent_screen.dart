import 'package:flutter/material.dart';

void main() {
  runApp(
    DifferentItems(
      items: List<ListItem>.generate(
        100,
        (i) => i % 6 == 0
            ? HeadingItem('Titulo $i')
            : MessageItem('Subtitulo $i', 'Descripción $i'),
      ),
    ),
  );
}

class DifferentItems extends StatelessWidget {
  final List<ListItem> items;

  const DifferentItems({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    const titulo = 'Mix Listas';

    return MaterialApp(
      title: titulo,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(titulo),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            return ListTile(
              title: item.buildTitle(context),
              subtitle: item.buildSubtitle(context),
            );
          },
        ),
      ),
    );
  }
}

abstract class ListItem {
  Widget buildTitle(BuildContext context);
  Widget buildSubtitle(BuildContext context);
}

class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  @override
  Widget buildTitle(BuildContext context) => Text(sender);

  @override
  Widget buildSubtitle(BuildContext context) => Text(body);
}
