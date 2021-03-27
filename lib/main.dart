import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appthlete',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Appthlete'),
        ),
        body: Center(
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(labelText: "USUARIO"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
