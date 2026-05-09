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
      title: 'TextButton Örneği',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TextButton Demo"),
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  print("TextButton tıklandı!");
                },
                child: const Text("Text Button"),
              ),
              const SizedBox(height: 20),
              TextButton.icon(
                onPressed: () {
                  print("TextButton.icon tıklandı!");
                },
                icon: const Icon(Icons.thumb_up, color: Colors.blue),
                label: const Text("İkonlu Text Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}