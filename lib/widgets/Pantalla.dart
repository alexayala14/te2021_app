import 'package:flutter/material.dart';
import 'package:te2021_app/widgets/Pregunta.dart';
import 'package:te2021_app/widgets/Pista.dart';
enum SingingCharacter { leonardo, dali, goya,verdadero,falso }

class Pantalla extends StatefulWidget {
  const Pantalla({Key? key}) : super(key: key);

  @override
  State<Pantalla> createState() => _PantallaState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _PantallaState extends State<Pantalla> {
  SingingCharacter? _character = SingingCharacter.leonardo;
  bool bandera=true;
  int _counter=0;
  String pista= "Aca va la Descripcion";

  void _increment() {
    setState(() {
      _counter=_counter + 10;
    });
  }
  void _decrement() {
    setState(() {
      _counter=_counter - 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
      height: double.infinity,
      width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/fondo1.jpg'),fit: BoxFit.cover
          ),
        ),
      child:Column(
        children: <Widget>[
          new Image.asset('assets/renacimiento.jpg',
            height: 300,
            width: 500,

          ),
          SizedBox(height: 30),
          Text("Seleccione la opcion correcta",style: TextStyle(fontSize: 40,color: Colors.purple,fontWeight: FontWeight.bold,),),
          SizedBox(height: 30),
          Theme(
          data: ThemeData(
              unselectedWidgetColor: Colors.red
          ),
          child:ListTile(
          title: const Text('Leonardo',style: TextStyle(fontSize: 20,color: Colors.purple,fontWeight: FontWeight.bold,),),
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
          title: const Text('Dali',style: TextStyle(fontSize: 20,color: Colors.purple,fontWeight: FontWeight.bold,),),
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
          title: const Text('Goya',style: TextStyle(fontSize: 20,color: Colors.purple,fontWeight: FontWeight.bold,),),
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
          SizedBox(width: 50),
          Center(

            child: Table(
              /*defaultVerticalAlignment: ,*/
              children:[
                TableRow(
          children:[
            SizedBox(width: 30),
        ElevatedButton(
          onPressed: (){
            setState(() {
              if(bandera==true){
              _decrement();
              bandera=false;
              }
              pista="El pintor pertenece al rencimiento, nacio en 1775";
            });
          },//onPressed,
          child: Text('Pista',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(30.0),
            minimumSize: Size(30.0,30.0),
          ),
        ),
            SizedBox(width: 30),
          ElevatedButton(
            onPressed: (){
              setState(() {
                bandera=true;

              });
            },//onPressed,
            child: Text('Siguente',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(30.0),
              minimumSize: Size(30.0,30.0),
            ),
          ),
            SizedBox(width: 30),
            CounterDisplay(count: _counter),
            SizedBox(width: 30),
            SizedBox(height: 30),

         ],
                ),
         ],
          ),
          ),
          SizedBox(height: 30),
          Container(
            height: 200,
            width: 1500,
            margin: EdgeInsets.all(30.0),

            decoration: BoxDecoration(
              color: Colors.brown,
             borderRadius: BorderRadius.circular(10),
             /* image: DecorationImage(
                  image: AssetImage('assets/roma.jpg'),fit: BoxFit.cover
              ),*/
            ),
            child: PistaDisplay(pista:pista),

          ),
         /*new Counter(),*/
      ],
    ),
      ),
    );
  }
}
