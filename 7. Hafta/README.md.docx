import 'package:flutter/material.dart';

void main() {
  runApp(IlkUygulamam());
}

class IlkUygulamam extends StatefulWidget {
  const IlkUygulamam({Key? key}) : super(key: key);

  @override
  State<IlkUygulamam> createState() => _IlkUygulamamState();
}

List<String> options = ['C', 'C++', 'Javascript', 'Flutter', 'Kotlin'];

class _IlkUygulamamState extends State<IlkUygulamam> {
  String inputValue = '';
  TextEditingController passController = TextEditingController();
  String text1 = '';
  bool _isChecked = false;
  bool _isSwitched = false;
  double _slideValue = 0;
  var pass = '';
  String _selectedGender = "none";
  String currentOption = options[0];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        body: SizedBox(
          width: MediaQuery.of(context).size.width * 1,
          child: Column(
            verticalDirection: VerticalDirection.down,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onChanged: (_text1) {
                    setState(() {
                      pass = _text1;
                    });
                  },
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    hintText: 'Enter your password',
                    labelText: 'password',
                    suffixIcon: Icon(Icons.abc_outlined),
                    icon: Icon(
                      Icons.password,
                      color: Colors.black,
                    ),
                  ),
                  controller: passController,
                  obscureText: true,
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (_dal) {
                      setState(() {
                        _isChecked = _dal!;
                      });
                    },
                    focusColor: Colors.black45,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('Outlined Button\a basıldı!');
                    },
                    child: Text('Outlined Button'),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        print('Outlined Button\a basıldı!');
                      },
                      icon: Icon(Icons.access_alarm_outlined),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white54,
                      ),
                      label: Text('İkonlu Outline Button'),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CheckboxListTile(
                  value: _isChecked,
                  onChanged: (_dal) {
                    setState(() {
                      _isChecked = _dal!;
                    });
                  },
                  activeColor: Colors.white54,
                  title: Text(
                    'Checkbox Listile Title',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'subtitle',
                    style: TextStyle(color: Colors.white54),
                  ),
                  tileColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              Switch(
                value: _isSwitched,
                onChanged: (SwitchData) {
                  setState(
                    () {
                      _isSwitched = SwitchData;
                    },
                  );
                },
                activeColor: Colors.deepOrange,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SwitchListTile(
                  value: _isSwitched,
                  onChanged: (SwitchData) {
                    setState(
                      () {
                        _isSwitched = SwitchData;
                      },
                    );
                  },
                  activeColor: Colors.deepPurple,
                  title: Text(
                    'Switch Listile Title',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'subtitle',
                    style: TextStyle(color: Colors.white54),
                  ),
                  tileColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
              Visibility(
                visible: _isSwitched,
                child: Slider(
                  value: _slideValue,
                  activeColor: Colors.deepPurpleAccent,
                  inactiveColor: Colors.black,
                  divisions: 20,
                  max: 100,
                  min: 0,
                  label: _slideValue.round().toString(),
                  onChanged: (slider) {
                    setState(() {
                      _slideValue = slider;
                    });
                  },
                ),
              ),
              DropdownButton(
                value: _selectedGender,
                onChanged: (_gender) {
                  setState(() {
                    _selectedGender = _gender!;
                  });
                },
                items: <DropdownMenuItem<String>>[
                  DropdownMenuItem(
                      child: Text("Lütfen Cinsiyet seçiniz. "), value: 'none'),
                  DropdownMenuItem(child: Text("Kadın"), value: 'kadın'),
                  DropdownMenuItem(child: Text("Erkek"), value: 'erkek'),
                ],
              ),
              Expanded(
                child: ListTile(
                  title: Text('C'),
                  leading: Radio(
                    value: options[0],
                    groupValue: currentOption,
                    onChanged: (language) {
                      setState(() {
                        currentOption = language!.toString();
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text('C++'),
                  leading: Radio(
                    value: options[1],
                    groupValue: currentOption,
                    onChanged: (language) {
                      setState(() {
                        currentOption = language!.toString();
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text('JavaScript'),
                  leading: Radio(
                    value: options[2],
                    groupValue: currentOption,
                    onChanged: (language) {
                      setState(() {
                        currentOption = language!.toString();
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text('Flutter'),
                  leading: Radio(
                    value: options[3],
                    groupValue: currentOption,
                    onChanged: (language) {
                      setState(() {
                        currentOption = language!.toString();
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: ListTile(
                  title: Text('Kotlin'),
                  leading: Radio(
                    value: options[4],
                    groupValue: currentOption,
                    onChanged: (language) {
                      setState(() {
                        currentOption = language!.toString();
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 12),
              Divider(height: 18, color: Colors.deepPurple),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Text('Text value: $pass'),
                      Text('CheckBox valuesi: $_isChecked'),
                      Text('Switch valuesi: $_isSwitched'),
                      Text('Slider valuesi: $_slideValue'),
                      Text('DropDownButton valuesi: $_selectedGender')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
