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
      title: 'Layout Widget Örnekleri',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Column & Row Örneği"),
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
        body: Column( // Dikey düzen
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("Column içindeki kutular"),
            Container(width: 80, height: 80, color: Colors.red),
            Container(width: 80, height: 80, color: Colors.green),
            Container(width: 80, height: 80, color: Colors.blue),

            const Divider(thickness: 2),

            Row( // Yatay düzen
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Row içindeki kutular:"),
                Container(width: 80, height: 80, color: Colors.orange),
                Container(width: 80, height: 80, color: Colors.purple),
                Container(width: 80, height: 80, color: Colors.teal),
              ],
            ),
          ],
        ),
      ),
    );
  }
}