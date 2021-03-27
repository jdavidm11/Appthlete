import 'package:flutter/material.dart';

class RegistroDeportista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Registro Deportista'),
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
                    child: Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "USUARIO", border: OutlineInputBorder()),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "CONTRASEÑA",
                            border: OutlineInputBorder()),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
  }
}
