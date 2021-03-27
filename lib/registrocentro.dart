import 'package:flutter/material.dart';

class RegistroCentro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro Centro Deportivo'),
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
                          labelText: "Nombre",
                          border: OutlineInputBorder(),
                          icon: Icon(Icons.account_circle)),
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
                          labelText: "Usuario", border: OutlineInputBorder()),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Contraseña",
                          border: OutlineInputBorder()),
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
                                labelText: "Nombre del Centro Deportivo",
                                border: OutlineInputBorder())))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
