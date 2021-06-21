import 'package:flutter/material.dart';
import 'package:te2021_app/widgets/Boton.dart';
class Score extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Score'),
      ),body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          MiBoton(
            onPressed: (parametro){
              print("paso por Score");
              print("Es el Parametro: "+parametro);
              Navigator.of(context).pushNamed('/menuPrincipal');
            },
            onPressed1: (contador){
              print("paso por Score");
              print("Es el Parametro: "+"$contador");
              Navigator.of(context).pushNamed('/menuPrincipal');
            },
            texto: 'segundo boton Score',
            contador: 1,
          )
        ],
      ),
    ),
    );
  }
}