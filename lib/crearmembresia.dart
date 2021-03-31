import 'package:flutter/material.dart';

class CrearMembresia extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Crear Membresía'),
        ),
        body: SingleChildScrollView(
          child: Container(
            
            margin: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 10, bottom: 10),
            
            child: Column(
              children: [
                
                Container(
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: "Nombre Membresía",
                              border: OutlineInputBorder()),
                        ),
                      ),
                
                Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                            top: 20, bottom: 10),
                child: Text('Actividades Membresía',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),

               Container(
                    child: TextField(
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Actividad'
                    ),
                  ),
                  ),

                  Container(
                      height: 400,
                      width: double.infinity,
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
                          print("Actividad seleccionada");
                          
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
                          Text('Actividad ${ (index+1).toString() }')
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
      );
  }
}