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
      title: 'CheckBoxListTile Örneği',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("CheckBoxListTile Demo"),
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        body: Center(
          child: CheckboxListTile(
            title: const Text("Kullanım Şartlarını Kabul Et"),
            subtitle: const Text("Devam etmek için işaretleyin"),
            value: _isChecked,
            activeColor: Colors.green,
            checkColor: Colors.white,
            onChanged: (bool? newValue) {
              setState(() {
                _isChecked = newValue!;
              });
            },
            secondary: const Icon(Icons.check_circle_outline),
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