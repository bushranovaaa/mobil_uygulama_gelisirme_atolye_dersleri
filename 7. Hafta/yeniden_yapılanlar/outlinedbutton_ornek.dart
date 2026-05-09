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
      title: 'OutlinedButton Örneği',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("OutlinedButton Demo"),
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {
                  print("OutlinedButton tıklandı!");
                },
                child: const Text("Outlined Button"),
              ),
              const SizedBox(height: 20),
              OutlinedButton.icon(
                onPressed: () {
                  print("OutlinedButton.icon tıklandı!");
                },
                icon: const Icon(Icons.star, color: Colors.orange),
                label: const Text("İkonlu Outlined Button"),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.orange, width: 2),
                  foregroundColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}