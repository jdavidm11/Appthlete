

import 'package:flutter/material.dart';

class PaginaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appthlete',
      home: Scaffold(
        /*
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Appthlete',
          ),
        ),*/
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 100),
                      width: 250,
                      height: 200,
                      child: Image.asset('lib/assets/logo.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 25),
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "USUARIO",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 15),
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: "CONTRASEÑA",
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
                      child: ElevatedButton(
                        child: Text("Iniciar Sesión"),
                        onPressed: () {
                          ingresoDeportista(context);
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
                      child: TextButton(
                        child: Text("Registro Deportista"),
                        onPressed: () {
                          registroDeportista(context);
                        }),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
                      child: TextButton(
                        child: Text("Registro Centro Deportivo"),
                        onPressed: () {
                          registroCentroDeportivo(context);
                        }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void ingresoDeportista(BuildContext context) {
    print("Ingreso deportista");
  }

  void registroDeportista(BuildContext context) {
    Navigator.pushNamed(context, '/deportistaregistro');
    print("Registro Deportista");
  }

  void registroCentroDeportivo(BuildContext context) {
    Navigator.pushNamed(context, '/centroregistro');
    print("Registro Centro Deportivo");
  }
}
