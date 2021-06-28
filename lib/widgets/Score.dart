import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:te2021_app/widgets/Boton.dart';
class Score extends StatelessWidget{
 final int _counter;
Score(this._counter);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Score'),
      ),
      body: Container(
        alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/tablero.png'),fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
        /* image: DecorationImage(
                  image: AssetImage('assets/roma.jpg'),fit: BoxFit.cover
              ),*/
      ),
      child:Center(

        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Text('Puntos:${_counter}',style: TextStyle(fontSize: 40,color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,),textAlign: TextAlign.center,),
         /* MiBoton(
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
            texto: 'LOS PUNTOS SON:${_counter}',
            contador: 1,
          )*/
        ],
      ),
      ),
    ),
    );
  }
}