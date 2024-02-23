import 'package:flutter/material.dart';
import 'package:makromusic_button/makromusic_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example app',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF42C0C6),
      body: Center(
        child: SizedBox(
          width: 300,
          child: MakromusicButton(
            onTap: () {
              debugPrint('Hello World');
            },
          ),
        ),
      ),
    );
  }
}
