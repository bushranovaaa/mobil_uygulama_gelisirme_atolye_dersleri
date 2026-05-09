import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String sifre = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF5F5DC), // Açık bej arka plan
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text("Hi-Kod"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          onPressed: () {
            print("FloatingActionButton'a basıldı!");
          },
          child: const Icon(Icons.add),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: "İsminiz",
                    border: OutlineInputBorder(),
                  ),
                  onTap: () {
                    print("TextField'a tıklandı!");
                  },
                  onChanged: (String s) {
                    setState(() {
                      sifre = s;
                    });
                  },
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 100,
                height: 100,
                color: Colors.greenAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}