import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:te2021_app/widgets/Pregunta.dart';
import 'package:te2021_app/widgets/Pista.dart';
enum SingingCharacter { verdadero,leonardo, dali, goya,falso,greco,boticelli,brueghel,tiziano,miguel,giovanni,rafael }

class Pantalla extends StatefulWidget {
  const Pantalla({Key? key}) : super(key: key);

  @override
  State<Pantalla> createState() => _PantallaState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _PantallaState extends State<Pantalla> with SingleTickerProviderStateMixin {
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
  String _pintor1= 'Leonardo da Vinci';
  String _pintor2='Salvador Dali';
  String _pintor3='Goya';
  String _pintor4='Miguel Angel Buonarroti';
  SingingCharacter _character1=SingingCharacter.leonardo;
  SingingCharacter _character2=SingingCharacter.dali;
  SingingCharacter _character3=SingingCharacter.goya;
  SingingCharacter _character4=SingingCharacter.miguel;
  SingingCharacter _characterVerdadero=SingingCharacter.leonardo;
  BoxFit _fit=BoxFit.contain;
  String _imagen1='assets/leonardo1.jpg';
  String _imagen2='assets/dali.jpg';
  String _imagen3='assets/goya.jpg';
  String _imagen4='assets/miguelangel.jpg';
  late AnimationController _animationController;
  late Animation <double> scaleAnimation;
  late Animation <double> translateAnimation;
  late Animation <double> rotateAnimation;

  @override
  void initState() {
  _animationController = new AnimationController(duration: Duration(seconds: 3),vsync: this);
  scaleAnimation = Tween<double>(begin: 1,end: 1.1).animate(_animationController);
  translateAnimation = Tween<double>(begin: 0,end: 50).animate(CurvedAnimation(parent: _animationController,curve: Curves.bounceInOut));
  rotateAnimation = Tween<double>(begin: 0,end: 50).animate(CurvedAnimation(parent: _animationController,curve: Curves.decelerate));

  super.initState();
  }

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
         _character1=SingingCharacter.miguel;
         _character2=SingingCharacter.rafael;
         _character3=SingingCharacter.dali;
        _character4=SingingCharacter.goya;
         _characterVerdadero=SingingCharacter.rafael;
         _pintor1= 'Miguel Ángel Buonarroti';
         _pintor2='Rafael Sanzio';
         _pintor3='Salvador Dali';
        _pintor4='Goya';
        _imagen1='assets/miguelangel.jpg';
        _imagen2='assets/rafael.jpg';
        _imagen3='assets/dali.jpg';
        _imagen4='assets/goya.jpg';

      }else if(_counterCicle==2){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/venus.jpg';
         _character1=SingingCharacter.boticelli;
         _character2=SingingCharacter.miguel;
         _character3=SingingCharacter.goya;
        _character4=SingingCharacter.rafael;
         _characterVerdadero=SingingCharacter.boticelli;
         _pintor1= 'Sandro Botticelli';
         _pintor2='Miguel Ángel Buonarroti';
         _pintor3='Goya';
        _pintor4='Rafael';
        _imagen1='assets/botticelli.jpg';
        _imagen2='assets/miguelangel.jpg';
        _imagen3='assets/goya.jpg';
        _imagen4='assets/rafael.jpg';

      }else if(_counterCicle==3){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/venusurbino.jpg';
         _character1=SingingCharacter.miguel;
         _character2=SingingCharacter.leonardo;
         _character3=SingingCharacter.tiziano;
        _character4=SingingCharacter.goya;
         _characterVerdadero=SingingCharacter.tiziano;
         _pintor1= 'Miguel Angel Buonarroti';
         _pintor2='Leonardo da Vinci';
         _pintor3='Tiziano Vecellio';
        _pintor4='Goya';
        _imagen1='assets/miguelangel.jpg';
        _imagen2='assets/leonardo1.jpg';
        _imagen3='assets/tizziano.jpg';
        _imagen4='assets/goya.jpg';
      }else if(_counterCicle==4){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/torrebabelbruegel.jpg';
         _character1=SingingCharacter.leonardo;
         _character2=SingingCharacter.tiziano;
         _character3=SingingCharacter.brueghel;
        _character4=SingingCharacter.boticelli;
         _characterVerdadero=SingingCharacter.brueghel;
         _pintor1= 'Leonardo da vinci';
         _pintor2='Tiziano Vecellio';
         _pintor3='Pieter Brueghel el Viejo';
        _pintor4='Sandro Botticelli';
        _imagen1='assets/leonardo1.jpg';
        _imagen2='assets/tizziano.jpg';
        _imagen3='assets/elviejo.jpg';
        _imagen4='assets/botticelli.jpg';
      }else if(_counterCicle==5){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/veronicagreco.jpg';
         _character1=SingingCharacter.greco;
         _character2=SingingCharacter.tiziano;
         _character3=SingingCharacter.boticelli;
        _character4=SingingCharacter.dali;
         _characterVerdadero=SingingCharacter.greco;
         _pintor1= 'El Greco';
         _pintor2='Tiziano Vecellio';
         _pintor3='Sandro Botticelli';
        _pintor4='Salvador Dali';
        _imagen1='assets/greco.jpg';
        _imagen2='assets/tizziano.jpg';
        _imagen3='assets/botticelli.jpg';
        _imagen4='assets/dali.jpg';
      }else if(_counterCicle==6){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/cristo.jpg';
         _character1=SingingCharacter.leonardo;
         _character2=SingingCharacter.miguel;
         _character3=SingingCharacter.giovanni;
        _character4=SingingCharacter.dali;
         _characterVerdadero=SingingCharacter.leonardo;
         _pintor1= 'Leonardo';
         _pintor2='Miguel Ángel Buonarroti';
         _pintor3='Giovanni Bellini';
        _pintor4='Goya';
        _imagen1='assets/leonardo1.jpg';
        _imagen2='assets/dali.jpg';
        _imagen3='assets/goya.jpg';
        _imagen4='assets/goya.jpg';
      }else if(_counterCicle==7){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/adanevadurero.jpg';
         _character1=SingingCharacter.leonardo;
         _character2=SingingCharacter.dali;
         _character3=SingingCharacter.goya;
        _character4=SingingCharacter.dali;
         _characterVerdadero=SingingCharacter.leonardo;
         _pintor1= 'Leonardo';
         _pintor2='Dali';
         _pintor3='Alberto Durero';
        _pintor4='Goya';
        _imagen1='assets/leonardo1.jpg';
        _imagen2='assets/dali.jpg';
        _imagen3='assets/goya.jpg';
        _imagen4='assets/goya.jpg';
      }else if(_counterCicle==8){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/virgenleonardo.jpg';
         _character1=SingingCharacter.leonardo;
         _character2=SingingCharacter.dali;
         _character3=SingingCharacter.goya;
        _character4=SingingCharacter.dali;
         _characterVerdadero=SingingCharacter.leonardo;
         _pintor1= 'Leonardo';
         _pintor2='Dali';
         _pintor3='Goya';
        _pintor4='Goya';
        _imagen1='assets/leonardo1.jpg';
        _imagen2='assets/dali.jpg';
        _imagen3='assets/goya.jpg';
        _imagen4='assets/goya.jpg';
      }else if(_counterCicle==9){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/vistagreco.jpg';
         _character1=SingingCharacter.leonardo;
         _character2=SingingCharacter.dali;
         _character3=SingingCharacter.goya;
        _character4=SingingCharacter.dali;
         _characterVerdadero=SingingCharacter.leonardo;
         _pintor1= 'Leonardo';
         _pintor2='Dali';
         _pintor3='Goya';
        _pintor4='Goya';
        _imagen1='assets/leonardo1.jpg';
        _imagen2='assets/dali.jpg';
        _imagen3='assets/goya.jpg';
        _imagen4='assets/goya.jpg';
      }else if(_counterCicle==10){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/mona.jpg';
         _character1=SingingCharacter.leonardo;
         _character2=SingingCharacter.dali;
         _character3=SingingCharacter.goya;
        _character4=SingingCharacter.dali;
         _characterVerdadero=SingingCharacter.leonardo;
         _pintor1= 'Leonardo';
         _pintor2='Dali';
         _pintor3='Goya';
        _pintor4='Goya';
        _imagen1='assets/leonardo1.jpg';
        _imagen2='assets/dali.jpg';
        _imagen3='assets/goya.jpg';
        _imagen4='assets/goya.jpg';
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
       AnimatedBuilder(
           animation: _animationController, builder: (BuildContext context,_) => Transform.rotate(
           //scale:scaleAnimation.value,
         //offset: Offset(rotateAnimation.value,0),
          //angle:2*pi + 0.1,
         angle: 0.01,
           child:Transform(
             //transform: Matrix4.skewX(0),
             alignment: Alignment.center,
             transform: Matrix4.identity()
               ..setEntry(3, 2, 0.001)..rotateY(rotateAnimation.value),
           child: ClipOval(
             /*decoration: BoxDecoration(
        color: Colors.black12,
        border: Border.all(),
        borderRadius: BorderRadius.circular(20),
        *//*image: DecorationImage(
            image: AssetImage('${imagen}'),fit:BoxFit.cover,
        ),*//*
      ),*/
             child:  new Image.asset('${imagen}',
               /*fit: _fit,*/
               height: 275,
               width: 275,
               fit:BoxFit.fill,

             ),
           ),
           ),
       )
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
          AnimatedBuilder(
            animation: _animationController, builder: (BuildContext context,_) => Transform.rotate(
            //scale:scaleAnimation.value,
            //offset: Offset(rotateAnimation.value,0),
            //angle:2*pi + 0.1,
            angle: 0.01,
            child:Transform(
              //transform: Matrix4.skewX(0),
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)..rotateY(rotateAnimation.value),
              child:CircleAvatar(
            backgroundImage: AssetImage('${_imagen1}'),
            radius: 50,
          ),
            ),
        ),
          ),
          Theme(
          data: ThemeData(
              unselectedWidgetColor: Colors.white
          ),
          child:Expanded(child: ListTile(
          title: Text('${_pintor1}',style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.bold,)/*,textAlign: TextAlign.center*/,),
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
                _animationController.reset();
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
          AnimatedBuilder(
            animation: _animationController, builder: (BuildContext context,_) => Transform.rotate(
            //scale:scaleAnimation.value,
            //offset: Offset(rotateAnimation.value,0),
            //angle:2*pi + 0.1,
            angle: 0.01,
            child:Transform(
              //transform: Matrix4.skewX(0),
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)..rotateY(rotateAnimation.value),
              child:CircleAvatar(
            backgroundImage: AssetImage('${_imagen2}'),
            radius: 50,
          ),
            ),
          ),
          ),
        Theme(
          data: ThemeData(
              unselectedWidgetColor: Colors.white
          ),
          child: Expanded(child:ListTile(
          title: Text('${_pintor2}',style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.bold,),),
          leading: Radio<SingingCharacter>(
            value: _character2,
            groupValue: _character,
            toggleable: true,
            autofocus: false,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _animationController.reset();
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
          AnimatedBuilder(
            animation: _animationController, builder: (BuildContext context,_) => Transform.rotate(
            //scale:scaleAnimation.value,
            //offset: Offset(rotateAnimation.value,0),
            //angle:2*pi + 0.1,
            angle: 0.01,
            child:Transform(
              //transform: Matrix4.skewX(0),
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)..rotateY(rotateAnimation.value),
              child:CircleAvatar(
            backgroundImage: AssetImage('${_imagen3}'),
            radius: 50,
          ),
            ),
          ),
          ),
        Theme(
          data: ThemeData(
              unselectedWidgetColor: Colors.white
          ),
          child: Expanded(child:ListTile(
          title: Text('${_pintor3}',style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.bold,),),
          leading: Radio<SingingCharacter>(
            value: _character3,
            groupValue: _character,
            toggleable: true,
            autofocus: false,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _animationController.reset();
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
          AnimatedBuilder(
            animation: _animationController, builder: (BuildContext context,_) => Transform.rotate(
            //scale:scaleAnimation.value,
            //offset: Offset(rotateAnimation.value,0),
            //angle:2*pi + 0.1,
            angle: 0.01,
            child:Transform(
              //transform: Matrix4.skewX(0),
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)..rotateY(rotateAnimation.value),
              child:CircleAvatar(
            backgroundImage: AssetImage('${_imagen4}'),
            radius: 50,
          ),
            ),
          ),
          ),
          Theme(
            data: ThemeData(
                unselectedWidgetColor: Colors.white
            ),
            child: Expanded(child:ListTile(
              title: Text('${_pintor4}',style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.bold,),),
              leading: Radio<SingingCharacter>(
                value: _character4,
                groupValue: _character,
                toggleable: true,
                autofocus: false,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _animationController.reset();
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
                    _animationController.forward();
                    //_animationController.reset();
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
                      _animationController.forward();
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
