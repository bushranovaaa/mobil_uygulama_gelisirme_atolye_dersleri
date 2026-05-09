import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniEndFloat,
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                print("FlotingActionButton'a Basıldı!");
              },
              backgroundColor: Colors.cyan,
              child: Icon(Icons.add)),
          backgroundColor: Colors.grey,
          appBar: AppBar(
            backgroundColor: Colors.deepOrange,
            title: Text("Hi-Kod"),
            leading: Icon(Icons.menu),
            //titleSpacing:100.0,
            centerTitle: true,
            actions: [Icon(Icons.accessibility), Icon(Icons.add)],
            forceMaterialTransparency: false,
          ),
          body: SizedBox(
            width:1000,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              verticalDirection: VerticalDirection.down,
              children: [
                Container(color:Colors.blueGrey,height:100,width:100),
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                          colors: [Colors.black87, Colors.indigo, Colors.white]),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      border: Border(
                          top: BorderSide(
                        color: Colors.black,
                        width: 5,
                      ))),
                  width: 250, //Genişlik
                  height: 50,

                  child: const Center(
                      child: Text("Container",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ))), //Yükseklik
                ),
                Container(color:Colors.red,height:100,width:100),
                Container(color:Colors.black,height:100,width:100),
              ],
            ),
          ),
        ));
  }
