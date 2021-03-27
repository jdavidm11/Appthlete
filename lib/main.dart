
import 'package:flutter/material.dart';
import 'inicioapp.dart';
import 'paginainicial.dart';
import 'registrodeportista.dart';
import 'registrocentro.dart';
import 'iniciocentro.dart';
import 'iniciodeportista.dart';

void main() {
  runApp(MaterialApp(
    title: 'Appthlete',
    initialRoute: '/',
    routes: {
      '/': (context) => PaginaInicial(),
      '/deportistaregistro': (context) => RegistroDeportista(),
      '/centroregistro': (context) => RegistroCentro()
    },
  ));
}
