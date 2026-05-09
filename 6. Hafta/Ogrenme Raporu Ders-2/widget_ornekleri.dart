import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(IlkUygulamam());
}

class IlkUygulamam extends StatefulWidget {
  const IlkUygulamam({super.key});

  @override
  State<IlkUygulamam> createState() => _IlkUygulamamState();
}

class _IlkUygulamamState extends State<IlkUygulamam> {
  TextEditingController _controller = TextEditingController();
  var _value;
  double a = 10.0;
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          shadowColor: Colors.black,
          titleSpacing: 25,
          backgroundColor: Colors.deepPurpleAccent,
          title: Text('İlk Uygulamam'),
          actions: [
            OutlinedButton.icon(
              onPressed: () {},
              label: Text('Beyza Y'),
              icon: Icon(Icons.settings),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 1,
                    child: Image.network(
                        'https://fotolifeakademi.com/uploads/2020/04/manzara-fotografi-cekmek.jpg'))),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.4,
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
                border: Border(
                  top: BorderSide(width: 15, color: Colors.black54),
                ),
              ),
            ),
            Text('${_controller.text}'),
            TextField(
              autofocus: true,
              onChanged: (String val) => _value = val,
              controller: _controller,
              minLines: 1,
              maxLines: 3,
              decoration: InputDecoration(
                  labelText: 'asdsad',
                  hintText: 'asdasdasd',
                  icon: Icon(Icons.person)),
            ),
            Checkbox(
                activeColor: Colors.pink,
                checkColor: Colors.green,
                tristate: true,
                value: isChecked,
                onChanged: (newBool) {
                  setState(() {
                    isChecked = newBool;
                  });
                }),
            ListTile(
              trailing: Icon(Icons.ice_skating),
              subtitle: Text('adss'),
              leading: Checkbox(
                activeColor: Colors.pink,
                checkColor: Colors.green,
                tristate: true,
                value: isChecked,
                onChanged: (newBool) {
                  setState(() {
                    isChecked = newBool;
                  });
                },
              ),
              title: Text('Checkbox Etiketi'), // Checkbox'ın yanına yazı ekle
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text('sfdsdf'),
              value: isChecked,
              onChanged: (bool? newValue) {
                setState(() {
                  isChecked = newValue;
                });
              },
            ),
            Slider(
              value: a,
              onChanged: (neeSlider) {
                setState(() {
                  a = neeSlider;
                });
              },
              min: 0,
              max: 100,
              divisions: 10,
              label: a.round().toString(),
            ),
            OutlinedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green)),
                onPressed: () {},
                child: Text('dsfsdfsdf')),
            ElevatedButton(
              onPressed: () {},
              child: Text('dsfsdfsdf'),
            ),
            TextButton(onPressed: () {}, child: Text('dsfsdfsdf'))
          ],
        ),
      ),
    );
  }
}
