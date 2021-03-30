
import 'package:flutter/material.dart';
import 'inicioapp.dart';
import 'paginainicial.dart';
import 'registrodeportista.dart';
import 'registrocentro.dart';
import 'iniciocentro.dart';
import 'iniciodeportista.dart';
import 'solicituddeportista.dart';
import 'anadiractvidades.dart';
import 'editarmembresia.dart';
import 'solicituddeportistacentro.dart';
import 'crearactividad.dart';
import 'crearmembresia.dart';
import 'veractividad.dart';
import 'vermembresia.dart';
import 'verdeportista.dart';

void main() {
  runApp(MaterialApp(
    title: 'Appthlete',
    initialRoute: '/',
    routes: {
      '/': (context) => PaginaInicial(),

      '/deportistaregistro': (context) => RegistroDeportista(),
      '/iniciodeportista': (context) => InicioDeportista(),
      '/solicituddeportista': (context) => SolicitudDeportista(),

      '/centroregistro': (context) => RegistroCentro(),
      '/iniciocentro': (context) => InicioCentro(),
      '/anadiractividades': (context) => AnadirActividades(),
      '/crearactividad': (context) => CrearActividad(),
      '/veractividad': (context) => VerActividad(),
      '/anadirmembresia': (context) => AnadirMembresia(),
      '/crearmembresia': (context) => CrearMembresia(),
      '/vermembresia': (context) => VerMembresia(),
      '/anadirdeportistacentro': (context) => SolicitudIngresoDeportista(),
      '/verdeportista': (context) => VerDeportista(),
    
    },
  ));
}
