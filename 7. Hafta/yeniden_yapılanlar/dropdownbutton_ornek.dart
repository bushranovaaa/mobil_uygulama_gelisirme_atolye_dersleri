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
  String _selectedValue = "Seçiniz"; // başlangıç değeri

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DropdownButton Örneği',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("DropdownButton Demo"),
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Bir seçenek seçiniz:"),
              DropdownButton<String>(
                value: _selectedValue,
                items: const [
                  DropdownMenuItem(
                    value: "Seçiniz",
                    child: Text("Seçiniz"),
                  ),
                  DropdownMenuItem(
                    value: "Kadın",
                    child: Text("Kadın"),
                  ),
                  DropdownMenuItem(
                    value: "Erkek",
                    child: Text("Erkek"),
                  ),
                  DropdownMenuItem(
                    value: "Diğer",
                    child: Text("Diğer"),
                  ),
                ],
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedValue = newValue!;
                  });
                },
              ),
              const SizedBox(height: 20),
              Text("Seçilen değer: $_selectedValue"),
            ],
          ),
        ),
      ),
    );
  }
}