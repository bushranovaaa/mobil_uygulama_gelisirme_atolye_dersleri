import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // Hangi sayfadan başlayacağız
      routes: {
        '/': (context) => Sayfa1(),
        '/ikincisayfa': (context) =>
            Sayfa2(), // sayfa2'ye ikincisayfa ismi kullanarak geçiş yapmak.
        '/ucuncusayfa': (context) => Sayfa3(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class Sayfa1 extends StatelessWidget {
  const Sayfa1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(title: Text('Sayfa 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('1. Sayfa'),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/ikincisayfa');
              },
              child: Text('2. Sayfaya git!'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sayfa3()),
                );
              },
              child: Text('3. Sayfaya git!'),
            ),
          ],
        ),
      ),
    );
  }
}

class Sayfa2 extends StatelessWidget {
  const Sayfa2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(title: Text('Sayfa 2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('2. Sayfa'),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sayfa3()),
                );
              },
              child: Text('3. Sayfaya geç'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('1. Sayfaya geri dön'),
            ),
          ],
        ),
      ),
    );
  }
}

class Sayfa3 extends StatelessWidget {
  const Sayfa3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(title: Text('Sayfa 3')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('3. Sayfa'),
            OutlinedButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text('1. Sayfaya git!'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('2. Sayfaya git!'),
            ),
          ],
        ),
      ),
    );
  }
}
