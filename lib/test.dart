import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyInputPage(),
//     );
//   }
// }

class MyInputPage extends StatefulWidget {
  @override
  _MyInputPageState createState() => _MyInputPageState();
}

class _MyInputPageState extends State<MyInputPage> {
  // Define variables to store user inputs
  String _name = '';
  int _age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onChanged: (value) {
                // Update the name variable when the text field changes
                setState(() {
                  _name = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Enter your name',
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              onChanged: (value) {
                // Update the age variable when the text field changes
                setState(() {
                  _age = int.tryParse(value) ?? 0; // Convert input to integer
                });
              },
              decoration: InputDecoration(
                labelText: 'Enter your age',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20.0),
            Text('Name: $_name'),
            Text('Age: $_age'),
          ],
        ),
      ),
    );
  }
}
