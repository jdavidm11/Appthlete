

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
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      width: 250,
                      height: 200,
                      child: Image.network(
                        "https://iconape.com/wp-content/png_logo_vector/mikasa-athlete-logo.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 250,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "USUARIO",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 250,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: "CONTRASEÑA",
                              border: OutlineInputBorder()),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 100,
                      child: ElevatedButton(
                        child: Text("INGRESO"),
                        onPressed: () {
                          ingresoDeportista(context);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextButton(
                        child: Text("Registro Deportista"),
                        onPressed: () {
                          registroDeportista(context);
                        }),
                    SizedBox(
                      height: 2,
                    ),
                    TextButton(
                        child: Text("Registro Centro Deportivo"),
                        onPressed: () {
                          registroCentroDeportivo(context);
                        }),
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
