import 'package:flutter/material.dart';

class AnadirMembresia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Crear tipos de membresías'),
        ),
        body: SingleChildScrollView(
            child:Container(
           margin: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 10, bottom: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 200,
                    child: TextField(
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Membresía'
                    ),
                  ),
                  ),
                  Container(
                    width: 100,
                    child: TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/crearmembresia');
                      print('botton');
                    },
                     child: Text('Anadir')
                    ),
                  ),
                ],
              ),

              Container(
                      height: 600,
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
                          print(index);
                          Navigator.pushNamed(context, '/vermembresia');
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
                          Text('Membresía ${ (index+1).toString() }')
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
