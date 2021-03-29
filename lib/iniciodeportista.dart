import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'dynamic_event.dart';

class InicioDeportista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      height: 400,
                      width: 400,
                      color: Colors.blue,
                      child: DynamicEvent()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
