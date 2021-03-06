/*
import 'package:flutter/material.dart';
import 'package:te2021_app/widgets/Boton.dart';
class Pregunta extends StatelessWidget{


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
              print("paso por pregunta");
              print("Es el Parametro: "+parametro);
              Navigator.of(context).pushNamed('/respuesta');
            },
            onPressed1: (contador){
              print("paso por pregunta");
              print("Es el Parametro: "+"$contador");
              Navigator.of(context).pushNamed('/respuesta');
            },

            texto: 'segundo boton',
            contador: 1,
          )
        ],
      ),
    ),
    );
  }
}*/
//**************************************************************

import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  CounterDisplay({required this.count,required this.countNivel});

  final int count;
  final int countNivel;

  @override
  Widget build(BuildContext context) {
    return Text('Nivel:$countNivel\n\nPuntos:$count',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold,backgroundColor: Colors.brown),);
  }
}

class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text('Siguente'),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(10.0),
        minimumSize: Size(30.0,30.0),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  int _counterNivel = 1;
  void _increment() {
    setState(() {
      ++_counter;
      ++_counterNivel;
    });
  }

  void _unincrement() {
    setState(() {
      --_counter;
      --_counterNivel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CounterIncrementor(onPressed: _increment),
        SizedBox(width: 50),
        CounterDisplay(count: _counter,countNivel: _counterNivel,),
      ],
    );
  }
}

/*
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Counter(),
        ),
      ),
    ),
  );
}*/
