import 'package:flutter/material.dart';

class VerActividad extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Actividad'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 10, bottom: 10),
            child: Column(
              children: [

                Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                            top: 20, bottom: 10),
                child: Text('Horario',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),

              Dias("Lunes"),
              Dias("Martes"),
              Dias("Miércoles"),
              Dias("Jueves"),
              Dias("Viernes"),
              Dias("Sábado"),
              Dias("Domingo"),

              Container(
                    width: 100,
                    child: TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                       //Navigator.pushNamed(context, '/crearactividad');
                      print('botton');
                    },
                     child: Text('Guardar')
                    ),
                  ),
                

              ],
            ),
          ),
        )
      );
  }

  Widget Dias(String dia){
    return Container(
                child: Column(
                  children: [

                    Container(
                      alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(
                            top: 20, bottom: 10),
                            child: Text('${dia}',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                    ),
                    ),
                    

                    Container(
                      height: 200,
                      width: double.infinity,
                      child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index){
                    return Card(
                      margin: const EdgeInsets.only(
                                  left: 20.0, right: 20.0, top: 5, bottom: 5),
                      child: InkWell(
                        onTap: (){
                          print(index);
                          Navigator.pushNamed(context, '/veractividad');
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

                  ],
                ),
              );
  }
}