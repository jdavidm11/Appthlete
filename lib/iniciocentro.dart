

import 'package:flutter/material.dart';

class InicioCentro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
           margin: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 10, bottom: 10),
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                            top: 30, bottom: 10),
                child: Text('Solicitudes de ingreso deportistas',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              Container(
                height: 250,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      height: 150,
                      constraints: BoxConstraints(maxWidth: 200),
                      child: Card(
                  color: Colors.grey.withOpacity(0.1),
                  child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index){
                    return Card(
                      margin: const EdgeInsets.only(
                                  left: 20.0, right: 20.0, top: 5, bottom: 5),
                      child: InkWell(
                        onTap: (){
                          print(index);
                          Navigator.pushNamed(context, '/anadirdeportistacentro');
                        },
                        child:  Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                        children: [
                          Image.asset('lib/assets/logo.png',
                          width: 30,
                          height: 30,),
                          SizedBox(
                            width: 10,
                            height: 5,
                          ),
                          Text('gfgfdg')
                        ],
                      ),
                      ), 
                      ), 
                    
                    );
                  },
                ),
                ),
                    );
                  }
                  ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                            top: 30, bottom: 10),
                child: Text('Asistencia Hoy',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              Container(
                height: 250,
               child: Card(
                  color: Colors.grey.withOpacity(0.1),
                  child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index){
                    return Card(
                      margin: const EdgeInsets.only(
                                  left: 20.0, right: 20.0, top: 5, bottom: 5),
                      child: InkWell(
                        onTap: (){
                          print(index);
                        },
                        child:  Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                        children: [
                          Image.asset('lib/assets/logo.png',
                          width: 30,
                          height: 30,),
                          SizedBox(
                            width: 10,
                            height: 5,
                          ),
                          Text('gfgfdg')
                        ],
                      ),
                      ), 
                      ), 
                    
                    );
                  },
                ),
                ),
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
                Navigator.pushNamed(context, '/anadirmembresia');
              break;
              case 2:
                //Cerrar Sesión
                Navigator.pop(context);
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

      ), 
      onWillPop: (){
        print('boton atras');
      });
  }
}
