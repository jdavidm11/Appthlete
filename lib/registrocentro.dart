import 'dart:io';

import 'package:appthlete/imagepicker.dart';
import 'package:flutter/material.dart';

class RegistroCentro extends StatefulWidget {
  @override
  _RegistroCentroState createState() => _RegistroCentroState();
}

class _RegistroCentroState extends State<RegistroCentro> {
  File imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro Centro Deportivo'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ImagePickerWidget(
                      imageFile: this.imageFile,
                      onIMageSelected: (File file) {
                        setState(() {
                          imageFile = file;
                        });
                      }),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: 250,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Nombre del Centro Deportivo",
                            border: OutlineInputBorder()),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: 250,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Nombre del Administrador",
                            border: OutlineInputBorder()),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                          width: 250,
                          height: 40,
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "E-mail",
                                  border: OutlineInputBorder())))),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                          width: 250,
                          height: 40,
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Confirmar E-mail",
                                  border: OutlineInputBorder())))),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                          width: 250,
                          height: 40,
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Contraseña",
                                  border: OutlineInputBorder())))),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                          width: 250,
                          height: 40,
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Confirmar Contraseña",
                                  border: OutlineInputBorder())))),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 15.0),
                    child: ElevatedButton(
                      child: Text("Registrar"),
                      onPressed: () {
                        registroCentro(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void registroCentro(BuildContext context) {
    print("Registro centro");
    Navigator.pop(context);
  }
}
