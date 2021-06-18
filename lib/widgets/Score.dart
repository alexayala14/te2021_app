import 'package:flutter/material.dart';
import 'package:te2021_app/widgets/Boton.dart';
class Score extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('preguntas'),
      ),body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          MiBoton(
            onPressed: (parametro){
              print("paso por Score");
            },
            texto: 'segundo boton', key: null,
          )
        ],
      ),
    ),
    );
  }
}