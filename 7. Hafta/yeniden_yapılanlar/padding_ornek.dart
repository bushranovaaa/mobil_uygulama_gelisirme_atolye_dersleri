import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Padding Örneği',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Padding Demo"),
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.teal,
            child: Padding(
              padding: const EdgeInsets.all(20), // iç boşluk (padding)
              child: const Text(
                "Bu kutunun içinde padding var",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}