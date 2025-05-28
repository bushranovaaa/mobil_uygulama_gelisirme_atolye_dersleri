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
      title: 'İlk Projem',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            title: Text("Hi-Kod"),
            centerTitle: true,
            actions: [Icon(Icons.person)],
            leading: IconButton(
              onPressed: () {
                print('Appbar\'daki ikon butonuna tıklandı!');
              },
              icon: Icon(Icons.arrow_back),
            ),
          ),
          body: SizedBox(
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              verticalDirection: VerticalDirection.up,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  child: Center(child: Text("Kutucuk 1")),
                  decoration: BoxDecoration(color: Colors.green),
                ),
                Container(
                  height: 120,
                  width: 120,
                  child: Center(child: Text("Kutucuk 2")),
                  decoration: BoxDecoration(color: Colors.teal),
                ),
                Container(
                  height: 120,
                  width: 120,
                  child: Center(child: Text("Kutucuk 3")),
                  decoration: BoxDecoration(color: Color),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
