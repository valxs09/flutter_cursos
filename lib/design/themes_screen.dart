import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const ThemesDemo());

class ThemesDemo extends StatelessWidget {
  const ThemesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'temas',
      theme: AppTheme.darkTheme,
      home: const MyHomePage(title: 'temas'),
    );
  }
}

class AppTheme {
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.purpleAccent,
      brightness: Brightness.dark,
    ),
    textTheme: TextTheme(
      displayLarge: const TextStyle(
        fontSize: 70,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: GoogleFonts.oswald(
        fontSize: 30,
        fontStyle: FontStyle.italic,
      ),
      bodyMedium: GoogleFonts.merriweather(),
      displaySmall: GoogleFonts.pacifico(),
    ),
  );
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title),
      body: const CustomBody(),
      floatingActionButton: const CustomFloatingActionButton(),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: Theme.of(context).colorScheme.onSecondary,
            ),
      ),
      backgroundColor: Theme.of(context).colorScheme.secondary,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        color: Theme.of(context).colorScheme.primary,
        child: Text(
          'Holaaaaa',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
        ),
      ),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: const Color.fromARGB(255, 199, 79, 119), 
        ),
      ),
      child: FloatingActionButton(
        onPressed:(){},
        child: const Icon(Icons.add), 
        ),
    );
  }
}
