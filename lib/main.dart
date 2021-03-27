import 'package:flutter/material.dart';
import 'paginainicial.dart';
import 'registrodeportista.dart';

void main() {
  runApp(MaterialApp(
    title: 'Appthlete',
    initialRoute: '/',
    routes: {
      '/': (context) => PaginaInicial(),
      '/deportistaregistro': (context) => RegistroDeportista(),
    },
  ));
}
