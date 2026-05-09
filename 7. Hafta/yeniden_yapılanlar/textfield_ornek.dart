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
      title: 'TextField Örneği',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TextField Demo"),
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Adınızı giriniz:"),
              TextField(
                decoration: const InputDecoration(
                  labelText: "Ad",
                  hintText: "Buraya yazın",
                  icon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  print("Girilen değer: $value");
                },
              ),
              const SizedBox(height: 20),
              const Text("Şifre giriniz:"),
              TextField(
                decoration: const InputDecoration(
                  labelText: "Şifre",
                  hintText: "Şifrenizi yazın",
                  icon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
                obscureText: true, // şifre gizleme
              ),
            ],
          ),
        ),
      ),
    );
  }
}