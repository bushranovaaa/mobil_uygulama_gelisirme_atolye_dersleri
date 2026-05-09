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
  bool _isChecked = false; // başlangıç değeri

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CheckBox Örneği',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("CheckBox Demo"),
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Onaylıyor musunuz?"),
              Checkbox(
                value: _isChecked,
                activeColor: Colors.green,
                checkColor: Colors.white,
                onChanged: (bool? newValue) {
                  setState(() {
                    _isChecked = newValue!;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}