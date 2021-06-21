import 'package:flutter/material.dart';
import 'package:te2021_app/widgets/Pregunta.dart';
import 'package:te2021_app/widgets/Pista.dart';
enum SingingCharacter { verdadero,leonardo, dali, goya,falso }

class Pantalla extends StatefulWidget {
  const Pantalla({Key? key}) : super(key: key);

  @override
  State<Pantalla> createState() => _PantallaState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _PantallaState extends State<Pantalla> {
  SingingCharacter? _character = SingingCharacter.verdadero;
  bool bandera=true;
  int _counter=0;
  String pista= "Necesita ayuda? Presione el boton de pista.";
  String imagen='assets/renacimiento.jpg';
  bool respuestaOk=false;
  int _counterCicle=0;
  bool banderaPista=false;
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
  void _incrementCicle() {
    setState(() {
      ++_counterCicle;
    });
  }

  void _changePista(){
    setState(() {
      if(banderaPista==true && _counterCicle==1){
        pista= "Pista1";
        banderaPista=false;
      }else if(banderaPista==true && _counterCicle==2){
        pista= "Pista2";
        banderaPista=false;
      }else if(banderaPista==true && _counterCicle==3){
        pista= "Pista3";
        banderaPista=false;
      }else if(banderaPista==true && _counterCicle==4){
        pista= "Pista4";
        banderaPista=false;
      }else if(banderaPista==true && _counterCicle==5){
        pista= "Pista5";
        banderaPista=false;
      }else if(banderaPista==true && _counterCicle==6){
        pista= "Pista6";
        banderaPista=false;
      }else if(banderaPista==true && _counterCicle==7){
        pista= "Pista7";
        banderaPista=false;
      }else if(banderaPista==true && _counterCicle==8){
        pista= "Pista8";
        banderaPista=false;
      }else if(banderaPista==true && _counterCicle==9){
        pista= "Pista9";
        banderaPista=false;
      }else if(banderaPista==true && _counterCicle==10){
        pista= "Pista10";
        banderaPista=false;
      }else{
        pista= "Necesita ayuda? Presione el boton de pista.";
      }
    });
  }

  void _changeCicle() {
    setState(() {
      if(_counterCicle==1){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/dados.png';


      }else if(_counterCicle==2){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/Coliseo.jpg';


      }else if(_counterCicle==3){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/libreria.jpg';

      }else if(_counterCicle==4){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/roma.jpg';

      }else if(_counterCicle==5){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/tecnoart.jpg';

      }else if(_counterCicle==6){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/gale.jpg';

      }else if(_counterCicle==7){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/dados.png';

      }else if(_counterCicle==8){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/dados.png';

      }else if(_counterCicle==9){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/dados.png';

      }else if(_counterCicle==10){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/dados.png';
        _counterCicle=0;
      }
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
          new Image.asset('${imagen}',
            height: 300,
            width: 500,

          ),
          SizedBox(height: 30),
          Text("Seleccione la opcion correcta",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold,),),
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
                  respuestaOk=true;
                  print("EL VALOR DE LA BANDERA ES${bandera}");
                  print("El contador tiene: ${_counter}");
                  bandera=false;

                }
                else{
                  print("EL VALOR DE LA BANDERA ES${bandera}");
                  respuestaOk=false;
                }



              });
            },
            activeColor: Colors.green,
            //toggleable: true,
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
                  respuestaOk=true;
                  print("EL VALOR DE LA BANDERA ES${bandera}");
                  bandera=false;
                }
                else{
                  print("EL VALOR DE LA BANDERA ES${bandera}");
                  respuestaOk=false;
                }
              });
            },
            activeColor: Colors.green,
            //toggleable: true,
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
                  respuestaOk=true;
                  print("EL VALOR DE LA BANDERA ES${bandera}");
                  bandera=false;

                }
                else{
                  print("EL VALOR DE LA BANDERA ES${bandera}");
                  respuestaOk=false;
                }
              });
            },
            activeColor: Colors.green,
            //toggleable: true,
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
                banderaPista=true;
                _changePista();
              _decrement();
              bandera=false;
              }
              if(_counterCicle==0){
                pista="El pintor pertenece al rencimiento, nacio en 1775";
              }

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
                _incrementCicle();
                _changeCicle();
                banderaPista=false;
                _changePista();
                if(_character!=SingingCharacter.verdadero){
                  bandera=true;
                  if(respuestaOk==true){
                    _increment();
                    respuestaOk=false;
                  }
                }
                else{
                  pista="Seleccione una opcion para continuar";
                }

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
