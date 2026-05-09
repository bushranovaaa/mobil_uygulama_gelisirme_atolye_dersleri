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
  bool _isSwitched = false; // başlangıç değeri

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Switch Örneği',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Switch Demo"),
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Switch ile aç/kapat"),
              Switch(
                value: _isSwitched,
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                onChanged: (bool newValue) {
                  setState(() {
                    _isSwitched = newValue;
                  });
                },
              ),
              const SizedBox(height: 20),
              Text(
                _isSwitched ? "Switch açık" : "Switch kapalı",
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}