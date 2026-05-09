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
  double _currentValue = 50; // başlangıç değeri

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Slider Örneği',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Slider Demo"),
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Bir değer seçiniz:"),
              Slider(
                value: _currentValue,
                min: 0,
                max: 100,
                divisions: 10, // 0-100 arası 10 adım
                activeColor: Colors.green,
                inactiveColor: Colors.grey,
                label: _currentValue.round().toString(),
                onChanged: (double newValue) {
                  setState(() {
                    _currentValue = newValue;
                  });
                },
              ),
              const SizedBox(height: 20),
              Text("Seçilen değer: ${_currentValue.round()}"),
            ],
          ),
        ),
      ),
    );
  }
}