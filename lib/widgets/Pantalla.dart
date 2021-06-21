import 'package:flutter/material.dart';
import 'package:te2021_app/widgets/Pregunta.dart';
enum SingingCharacter { leonardo, dali, goya,verdadero,falso }

class Pantalla extends StatefulWidget {
  const Pantalla({Key? key}) : super(key: key);

  @override
  State<Pantalla> createState() => _PantallaState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _PantallaState extends State<Pantalla> {
  SingingCharacter? _character = SingingCharacter.leonardo;
  bool bandera=false;
  int _counter=0;

  void _increment() {
    setState(() {
      _counter=_counter + 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
      height: double.infinity,
      width: double.infinity,
      child:Column(
        children: <Widget>[
          new Image.asset('assets/renacimiento.jpg',
            height: 300,
            width: 500,

          ),
          Text("Seleccione la opcion correcta",),
        Theme(
          data: ThemeData(
              unselectedWidgetColor: Colors.red
          ),
          child:ListTile(
          title: const Text('Leonardo'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.leonardo,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                print("es el valor${value}");
                if(SingingCharacter.leonardo==value){
                  bandera=true;
                  /*CounterIncrementor(onPressed: _increment);
                  CounterDisplay(count: _counter);*/
                  _increment();
                  print("EL VALOR DE LA BANDERA ES${bandera}");
                  print("El contador tiene: ${_counter}");
                  bandera=false;
                }
                else{
                  print("EL VALOR DE LA BANDERA ES${bandera}");
                }



              });
            },
            activeColor: Colors.green,
            toggleable: true,
          ),
        ),
        ),
        Theme(
          data: ThemeData(
              unselectedWidgetColor: Colors.red
          ),
          child:ListTile(
          title: const Text('Dali'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.dali,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                print("es el valor${value}");
                if(SingingCharacter.leonardo==value){
                  bandera=true;
                  print("EL VALOR DE LA BANDERA ES${bandera}");
                  bandera=false;
                }
                else{
                  print("EL VALOR DE LA BANDERA ES${bandera}");
                }
              });
            },
            activeColor: Colors.green,
            toggleable: true,
          ),
        ),
        ),
        Theme(
          data: ThemeData(
              unselectedWidgetColor: Colors.red
          ),
          child:ListTile(
          title: const Text('Goya'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.goya,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                print("es el valor${value}");
                if(SingingCharacter.leonardo==value){
                  bandera=true;
                  print("EL VALOR DE LA BANDERA ES${bandera}");
                  bandera=false;
                }
                else{
                  print("EL VALOR DE LA BANDERA ES${bandera}");
                }
              });
            },
            activeColor: Colors.green,
            toggleable: true,
          ),
        ),
        ),
          CounterDisplay(count: _counter),
         /*new Counter(),*/
      ],
    ),
      ),
    );
  }
}
