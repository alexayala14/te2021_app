import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:te2021_app/widgets/Pregunta.dart';
import 'package:te2021_app/widgets/Pista.dart';
enum SingingCharacter { verdadero,leonardo, dali, goya,falso,greco,boticelli,Brueghel,Tiziano,Miguel,Giovanni }

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
  String imagen='assets/creacion.jpg';
  bool respuestaOk=false;
  int _counterCicle=0;
  int _counterRespuesta=0;
  bool banderaPista=false;
  bool toggleable=true;
  String _pintor1= 'Leonardo';
  String _pintor2='Dali';
  String _pintor3='Goya';
  SingingCharacter _character1=SingingCharacter.leonardo;
  SingingCharacter _character2=SingingCharacter.dali;
  SingingCharacter _character3=SingingCharacter.goya;
  SingingCharacter _characterVerdadero=SingingCharacter.leonardo;
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

  void _incrementRespuesta() {
    setState(() {
      ++_counterRespuesta;
    });
  }

  void _changePista(){
    setState(() {
      if(banderaPista==true && _counterCicle==0){
        if(_counterRespuesta==0){
          pista="El pintor pertenece al rencimiento, nacio en 1775";
          banderaPista=false;
        }else if(_counterRespuesta==1){
        pista= "Pista: reintento1";
        banderaPista=false;
        }else if(_counterRespuesta==2){
          pista= "Pista: reintento2";
          banderaPista=false;
        }
      }else if(banderaPista==true && _counterCicle==1){
        pista= "Pista: Fue un polímata florentino del Renacimiento italiano,Creía que existía una vinculación entre el arte y las matemáticas";
        banderaPista=false;
      }else if(banderaPista==true && _counterCicle==2){
        pista= "Pista Fue un pintor del Quattrocento italiano,Su nombre real era Alessandro di Mariano di Vanni Filipepi";
        banderaPista=false;
      }else if(banderaPista==true && _counterCicle==3){
        pista= "Pista3";
        banderaPista=false;
      }else if(banderaPista==true && _counterCicle==4){
        pista= "Pista4";
        banderaPista=false;
      }else if(banderaPista==true && _counterCicle==5){
        pista= "Pista Pintor Nacido en 1541, en Heraclión, actual capital de Creta (Grecia)";
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
        pista= "Pista Pintor Nacido en 1541, en Heraclión, actual capital de Creta (Grecia)";
        banderaPista=false;
      }else if(banderaPista==true && _counterCicle==10){
        pista= "Pista: Fue un polímata florentino del Renacimiento italiano,Creía que existía una vinculación entre el arte y las matemáticas";
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
        imagen='assets/madonna.jpg';
        SingingCharacter? _character1=SingingCharacter.leonardo;
        SingingCharacter? _character2=SingingCharacter.dali;
        SingingCharacter? _character3=SingingCharacter.goya;
        SingingCharacter? _characterVerdadero=SingingCharacter.leonardo;
         _pintor1= 'Miguel Ángel';
         _pintor2='Rafael Sanzio';
         _pintor3='Goya';

      }else if(_counterCicle==2){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/venus.jpg';
        SingingCharacter? _character1=SingingCharacter.leonardo;
        SingingCharacter? _character2=SingingCharacter.dali;
        SingingCharacter? _character3=SingingCharacter.goya;
        SingingCharacter? _characterVerdadero=SingingCharacter.leonardo;
         _pintor1= 'Leonardo';
         _pintor2='Miguel Ángel';
         _pintor3='Goya';

      }else if(_counterCicle==3){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/venusurbino.jpg';
        SingingCharacter? _character1=SingingCharacter.leonardo;
        SingingCharacter? _character2=SingingCharacter.dali;
        SingingCharacter? _character3=SingingCharacter.goya;
        SingingCharacter? _characterVerdadero=SingingCharacter.leonardo;
         _pintor1= 'Leonardo';
         _pintor2='Dali';
         _pintor3='Goya';
      }else if(_counterCicle==4){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/torrebabelbruegel.jpg';
        SingingCharacter? _character1=SingingCharacter.leonardo;
        SingingCharacter? _character2=SingingCharacter.dali;
        SingingCharacter? _character3=SingingCharacter.goya;
        SingingCharacter? _characterVerdadero=SingingCharacter.leonardo;
         _pintor1= 'Leonardo da vinci';
         _pintor2='Tiziano';
         _pintor3='Pieter Brueghel el Viejo';
      }else if(_counterCicle==5){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/veronicagreco.jpg';
        SingingCharacter? _character1=SingingCharacter.leonardo;
        SingingCharacter? _character2=SingingCharacter.dali;
        SingingCharacter? _character3=SingingCharacter.goya;
        SingingCharacter? _characterVerdadero=SingingCharacter.leonardo;
         _pintor1= 'Leonardo';
         _pintor2='Dali';
         _pintor3='Goya';
      }else if(_counterCicle==6){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/cristo.jpg';
        SingingCharacter? _character1=SingingCharacter.leonardo;
        SingingCharacter? _character2=SingingCharacter.dali;
        SingingCharacter? _character3=SingingCharacter.goya;
        SingingCharacter? _characterVerdadero=SingingCharacter.leonardo;
         _pintor1= 'Leonardo';
         _pintor2='Miguel Ángel';
         _pintor3='Giovanni Bellini';
      }else if(_counterCicle==7){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/adanevadurero.jpg';
        SingingCharacter? _character1=SingingCharacter.leonardo;
        SingingCharacter? _character2=SingingCharacter.dali;
        SingingCharacter? _character3=SingingCharacter.goya;
        SingingCharacter? _characterVerdadero=SingingCharacter.leonardo;
         _pintor1= 'Leonardo';
         _pintor2='Dali';
         _pintor3='Alberto Durero';
      }else if(_counterCicle==8){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/virgenleonardo.jpg';
        SingingCharacter? _character1=SingingCharacter.leonardo;
        SingingCharacter? _character2=SingingCharacter.dali;
        SingingCharacter? _character3=SingingCharacter.goya;
        SingingCharacter? _characterVerdadero=SingingCharacter.leonardo;
         _pintor1= 'Leonardo';
         _pintor2='Dali';
         _pintor3='Goya';
      }else if(_counterCicle==9){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/vistagreco.jpg';
        SingingCharacter? _character1=SingingCharacter.leonardo;
        SingingCharacter? _character2=SingingCharacter.dali;
        SingingCharacter? _character3=SingingCharacter.goya;
        SingingCharacter? _characterVerdadero=SingingCharacter.leonardo;
         _pintor1= 'Leonardo';
         _pintor2='Dali';
         _pintor3='Goya';
      }else if(_counterCicle==10){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/mona.jpg';
        SingingCharacter? _character1=SingingCharacter.leonardo;
        SingingCharacter? _character2=SingingCharacter.dali;
        SingingCharacter? _character3=SingingCharacter.goya;
        SingingCharacter? _characterVerdadero=SingingCharacter.leonardo;
         _pintor1= 'Leonardo';
         _pintor2='Dali';
         _pintor3='Goya';
        _counterCicle=0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Container(
      /*height: double.infinity,
      width: double.infinity,*/
          alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/fondo1.jpg'),fit: BoxFit.cover
          ),
        ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10),
      DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.black12,
        border: Border.all(),
        borderRadius: BorderRadius.circular(20),
      ),
        child:  new Image.asset('${imagen}',
            height: 300,
            width: 500,

          ),
      ),

          SizedBox(height: 30),
          Text("Seleccione la opcion correcta",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
          SizedBox(height: 40),
      Center(
        child:Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(50.0),

        child:Row(
            mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,

        children:<Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('assets/fondo1.jpg'),
            radius: 50,
          ),
          Theme(
          data: ThemeData(
              unselectedWidgetColor: Colors.red
          ),
          child:Expanded(child: ListTile(
          title: Text('${_pintor1}',style: TextStyle(fontSize: 20,color: Colors.purple,fontWeight: FontWeight.bold,)/*,textAlign: TextAlign.center*/,),
          leading: /*CircleAvatar(
                backgroundImage: AssetImage('assets/fondo1.jpg'),
                radius: 50,
              ),*/
              Radio<SingingCharacter>(
            value: _character1,
            groupValue: _character,
            toggleable: true,
            autofocus: false,

            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                print("es el valor${value}");
                if(_characterVerdadero==value){
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
          //     CircleAvatar(
          //     backgroundImage: AssetImage('assets/fondo1.jpg'),
          //   ),
          //   ],
          // ),
        //),

        ),
          ),
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/fondo1.jpg'),
            radius: 50,
          ),
        Theme(
          data: ThemeData(
              unselectedWidgetColor: Colors.red
          ),
          child: Expanded(child:ListTile(
          title: Text('${_pintor2}',style: TextStyle(fontSize: 20,color: Colors.purple,fontWeight: FontWeight.bold,),),
          leading: Radio<SingingCharacter>(
            value: _character2,
            groupValue: _character,
            toggleable: true,
            autofocus: false,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                print("es el valor${value}");
                if(_characterVerdadero==value){
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
        ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/fondo1.jpg'),
            radius: 50,
          ),
        Theme(
          data: ThemeData(
              unselectedWidgetColor: Colors.red
          ),
          child: Expanded(child:ListTile(
          title: Text('${_pintor3}',style: TextStyle(fontSize: 20,color: Colors.purple,fontWeight: FontWeight.bold,),),
          leading: Radio<SingingCharacter>(
            value: _character3,
            groupValue: _character,
            toggleable: true,
            autofocus: false,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
                print("es el valor${value}");
                if(_characterVerdadero==value){
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
        ),
          ],
        ),
      ),
        ),
          SizedBox(height: 50),
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
              /*if(_counterCicle==0){
                pista="El pintor pertenece al rencimiento, nacio en 1775";
              }*/

            });
          },//onPressed,
          child: Text('Pista',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(15.0),
            minimumSize: Size(30.0,30.0),
          ),
        ),
            SizedBox(width: 30),
          ElevatedButton(
            onPressed: (){
              setState(() {
                /*_incrementCicle();*/
                //_changeCicle();
                //banderaPista=false;
                //_changePista();
                if(_character!=SingingCharacter.verdadero){
                  bandera=true;
                  if(respuestaOk==true){
                    _increment();
                    _incrementCicle();
                    _changeCicle();
                    _changePista();
                    //Navigator.of(context).pushNamed('/screen');
                    respuestaOk=false;
                    _counterRespuesta=0;
                  }
                  else {
                    _incrementRespuesta();
                    if(_counterRespuesta <=2){
                      banderaPista=true;
                      _decrement();
                      print('la respuesta esss:${_counterRespuesta}');
                      _changePista();
                    }else {
                      _incrementCicle();
                      _changeCicle();
                      _changePista();
                      _counterRespuesta=0;
                    }
                  }
                }
                else{
                  pista="Seleccione una opcion para continuar";
                }

              });
            },//onPressed,
            child: Text('Siguiente',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(15.0),
              minimumSize: Size(30.0,30.0),
            ),

          ),
            SizedBox(width: 50),
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
            height: 100,
            width: 1500,
            alignment: Alignment.center,
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
    ),
    );
  }

}
