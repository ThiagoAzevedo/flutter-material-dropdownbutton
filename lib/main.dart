import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drop Down Button - Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyDropDownButton(),
    );
  }
}

class MyDropDownButton extends StatefulWidget {
  @override
  _MyDropDownButtonState createState() => _MyDropDownButtonState();
}

class _MyDropDownButtonState extends State<MyDropDownButton> {
  String dropdownValue = 'One';

  List<String> _itemsDropdown = ['One', 'Two', 'Three', 'Four', 'Five'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DropDownButton - Example',
        ),
      ),
      body: Center(
        child: DropdownButton(
          value: this.dropdownValue,
          icon: Icon(
            Icons.arrow_downward,
          ),
          iconSize: 24.0,
          elevation: 16,
          style: TextStyle(
            color: Colors.deepPurple,
          ),
          onChanged: (newValue) {
            setState(() {
              dropdownValue = newValue;
            });
          },
          items: _itemsDropdown.map<DropdownMenuItem<String>>((it) {
            return DropdownMenuItem(
              value: it,
              child: Text(
                it,
                style: TextStyle(fontSize: 27.0),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
