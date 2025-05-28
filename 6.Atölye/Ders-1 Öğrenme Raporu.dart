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
        title: 'İlk ödevim',
        home: SafeArea(
            child: Scaffold(
                backgroundColor: Colors.white54,
                appBar: AppBar(
                  backgroundColor: Colors.indigo,
                  title: Text("Hi-Kod",
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                          fontWeight: FontWeight.w400)),
                  centerTitle: true,
                  actions: [
                    IconButton(
                      icon: Icon(
                        Icons.person,
                        color: Color(0xffBDF5F2),
                        size: 40,
                      ),
                      onPressed: () {
                        print('İnsan ikonuna tıklandı!');
                      },
                    )
                  ],
                  leading: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 40,
                      )),
                ),
                body: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/manzara.jpg'))),
                ))));
  }
}
