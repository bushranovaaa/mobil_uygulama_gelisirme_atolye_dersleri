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
      title: 'SwitchListTile Örneği',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("SwitchListTile Demo"),
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        body: Center(
          child: SwitchListTile(
            title: const Text("Bildirimleri Aç"),
            subtitle: const Text("Uygulama bildirimlerini aktif et"),
            value: _isSwitched,
            activeColor: Colors.green,
            inactiveThumbColor: Colors.red,
            onChanged: (bool newValue) {
              setState(() {
                _isSwitched = newValue;
              });
            },
            secondary: const Icon(Icons.notifications),
            tileColor: Colors.blueGrey.shade100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}