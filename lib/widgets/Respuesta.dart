import 'package:flutter/material.dart';
import 'package:te2021_app/widgets/Boton.dart';
class Respuesta extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Respuesta'),
      ),body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          MiBoton(
            onPressed: (parametro){
              print("paso por respuesta");
              print("Es el Parametro: "+parametro);
              Navigator.of(context).pushNamed('/score');
            },
            onPressed1: (contador){
              print("paso por respuesta");
              print("Es el Parametro: "+"$contador");
              contador++;
              print("Es el Parametro CONTADOR SUMADO ES: "+"$contador");
              Navigator.of(context).pushNamed('/score');
            },
            texto: 'segundo boton respuesta', key: null,
            contador: 2,
          )
        ],
      ),
    ),
    );
  }
}