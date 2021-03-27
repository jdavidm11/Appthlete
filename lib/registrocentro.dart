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
                  ClipRRect(
                    borderRadius: BorderRadius.circular(70.0),
                    child: Image.network(
                        'https://i.pinimg.com/736x/d9/7b/bb/d97bbb08017ac2309307f0822e63d082.jpg',
                        height: 150.0,
                        width: 150.0,
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
