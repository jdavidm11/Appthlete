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
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwuKz50PSjCaLRrZ6G2JH3uttHD3KHWWK-9g&usqp=CAU",
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
                          _ingresoDeportista();
                        },
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextButton(
                        child: Text("Registro Deportista"),
                        onPressed: () {
                          Navigator.pushNamed(context, '/deportistaregistro');
                          _registroDeportista();
                        }),
                    SizedBox(
                      height: 2,
                    ),
                    TextButton(
                        child: Text("Registro Centro Deportivo"),
                        onPressed: () {
                          Navigator.pushNamed(context, '/centroregistro');
                          _registroCentroDeportivo();
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

  void _ingresoDeportista() {
    print("Ingreso deportista");
  }

  void _registroDeportista() {
    print("Registro Deportista");
  }

  void _registroCentroDeportivo() {
    print("Registro Centro Deportivo");
  }
}
