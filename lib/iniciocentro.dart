import 'package:flutter/material.dart';

class InicioCentro extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(

                ),
                Container(

                ),

              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFF6200EE),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            // Respond to item press.
            print(value);
            switch(value){
              case 0:
                Navigator.pushNamed(context, '/anadiractividades');
              break;
              case 1:
                Navigator.pushNamed(context, '/anadiractividades');
              break;
              case 2:
                //Cerrar Sesión
              break;
            }
            
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Actividades',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Membresía',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Cerrar Sesión',
            ),
          ],
    ),

      );
  }
}
