import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //statless yazınca kendisi widget oluşturuyor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'İlk Projem',
        home: SafeArea(
          //safe area yazdık (alttaki işlemi ve bunu uygulamayla görev çubuğu ayırmak için)
          child: Scaffold(
            backgroundColor:Colors.blueGrey,
            //scaffolda tıkla wrap with widget
            appBar: AppBar(
              //control ile widgeta tıkla (kaynak kodu)
              backgroundColor: Colors.indigo,
              title: Text("Hi-Kod"),
              centerTitle: true,
              actions: [Icon(Icons.person)],
              leading: IconButton.outlined(
                  onPressed: () {
                    print('Appbar\'daki ikon butonuna tıklandı!');
                  },
                  icon: Icon(Icons.arrow_back)),
            ),
            body:SizedBox(//columı sizebox ile sardık
              width: 350 , //cross axiste geişliği ayarlayabiliyoruz

              child: Column( //container'ı column ile sarmaladık

                mainAxisAlignment:MainAxisAlignment.spaceAround,//ana eksende(y) işlemler
                crossAxisAlignment:CrossAxisAlignment.center,

                verticalDirection: VerticalDirection.up,

                children: [ //aray list mantığı
                  Container( //decoration olduğu için color hemen  altına değil decoration içine yazılmalı
                    height:120,
                    width: 120,
                    child: Center(child: Text("Kutucuk 1")),
                    decoration: BoxDecoration(
                        color: Colors.green
                    ),
                  ),
                  Container( //decoration olduğu için color hemen  altına değil decoration içine yazılmalı
                    height:120,
                    width: 120,
                    child: Center(child: Text("Kutucuk 2")),
                    decoration: BoxDecoration(
                        color: Colors.teal
                    ),
                  ),
                  Container( //decoration olduğu için color hemen  altına değil decoration içine yazılmalı
                    height:120,
                    width: 120,
                    child: Center(child: Text("Kutucuk 3")),
                    decoration: BoxDecoration(
                        color: Colors.purple
                    ),
                  ),
                ],
              ),
            ) ,
          ),
        ));
  }
}import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //statless yazınca kendisi widget oluşturuyor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'İlk Projem',
        home: SafeArea(
          //safe area yazdık (alttaki işlemi ve bunu uygulamayla görev çubuğu ayırmak için)
          child: Scaffold(
            backgroundColor:Colors.blueGrey,
            //scaffolda tıkla wrap with widget
            appBar: AppBar(
              //control ile widgeta tıkla (kaynak kodu)
              backgroundColor: Colors.indigo,
              title: Text("Hi-Kod"),
              centerTitle: true,
              actions: [Icon(Icons.person)],
              leading: IconButton.outlined(
                  onPressed: () {
                    print('Appbar\'daki ikon butonuna tıklandı!');
                  },
                  icon: Icon(Icons.arrow_back)),
            ),
            body:SizedBox(//columı sizebox ile sardık
              width: 350 , //cross axiste geişliği ayarlayabiliyoruz

              child: Column( //container'ı column ile sarmaladık

                mainAxisAlignment:MainAxisAlignment.spaceAround,//ana eksende(y) işlemler
                crossAxisAlignment:CrossAxisAlignment.center,

                verticalDirection: VerticalDirection.up,

                children: [ //aray list mantığı
                  Container( //decoration olduğu için color hemen  altına değil decoration içine yazılmalı
                    height:120,
                    width: 120,
                    child: Center(child: Text("Kutucuk 1")),
                    decoration: BoxDecoration(
                        color: Colors.green
                    ),
                  ),
                  Container( //decoration olduğu için color hemen  altına değil decoration içine yazılmalı
                    height:120,
                    width: 120,
                    child: Center(child: Text("Kutucuk 2")),
                    decoration: BoxDecoration(
                        color: Colors.teal
                    ),
                  ),
                  Container( //decoration olduğu için color hemen  altına değil decoration içine yazılmalı
                    height:120,
                    width: 120,
                    child: Center(child: Text("Kutucuk 3")),
                    decoration: BoxDecoration(
                        color: Colors.purple
                    ),
                  ),
                ],
              ),
            ) ,
          ),
        ));
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //statless yazınca kendisi widget oluşturuyor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'İlk Projem',
        home: SafeArea(
          //safe area yazdık (alttaki işlemi ve bunu uygulamayla görev çubuğu ayırmak için)
          child: Scaffold(
            backgroundColor:Colors.blueGrey,
            //scaffolda tıkla wrap with widget
            appBar: AppBar(
              //control ile widgeta tıkla (kaynak kodu)
              backgroundColor: Colors.indigo,
              title: Text("Hi-Kod"),
              centerTitle: true,
              actions: [Icon(Icons.person)],
              leading: IconButton.outlined(
                  onPressed: () {
                    print('Appbar\'daki ikon butonuna tıklandı!');
                  },
                  icon: Icon(Icons.arrow_back)),
            ),
            body:SizedBox(
              height: 300,
              child: Row( //container'ı column ile sarmaladık
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,



                children: [ //aray list mantığı
                  Container( //decoration olduğu için color hemen  altına değil decoration içine yazılmalı
                    height:120,
                    width: 120,
                    child: Center(child: Text("Kutucuk 1")),
                    decoration: BoxDecoration(
                        color: Colors.green
                    ),
                  ),
                  Container( //decoration olduğu için color hemen  altına değil decoration içine yazılmalı
                    height:120,
                    width: 120,
                    child: Center(child: Text("Kutucuk 2")),
                    decoration: BoxDecoration(
                        color: Colors.teal
                    ),
                  ),
                  Container( //decoration olduğu için color hemen  altına değil decoration içine yazılmalı
                    height:120,
                    width: 120,
                    child: Center(child: Text("Kutucuk 3")),
                    decoration: BoxDecoration(
                        color: Colors.purple
                    ),
                  ),
                  //Expanded(//expanded ile sarmalanan container ekrana artık sığar

                ],
              ),
            ) ,
          ),
        ));
  }
}