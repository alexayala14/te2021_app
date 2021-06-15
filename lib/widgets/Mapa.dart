import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:te2021_app/models/usuario.dart';
import 'package:te2021_app/blocs/usuarioBloc.dart';
import 'package:get/get.dart';

class Mapa extends StatefulWidget {
  @override
  _MapaState createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  final UsuarioBloc _usuarioBloc = UsuarioBloc();
  int index = 0;
  int _count = 0;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
  @override
  void dispose() {
    _usuarioBloc.dispose();
  }

  final widgets = [
    Image.asset('assets/roma.jpg', fit: BoxFit.cover, key: Key('1')),
    Image.asset('assets/Coliseo.jpg', fit: BoxFit.cover, key: Key('2')),
    Image.asset('assets/renacimiento.jpg', fit: BoxFit.cover, key: Key('3')),

      Center(
      child:AlertDialog(
      title: Text('   Pinturas'),
      content: Text('Todas las pinturas pertenecen al mismo artista?'),
      backgroundColor: Colors.purple[100],
      key: Key('4'),
      actions: <Widget>[
      TextButton(child: Text('Si'), onPressed: () {
      // Navigator.of(context).pushNamed('/juegos');
      //final player = AudioCache();
      //player.play('templarios.mp3');
        Get.toNamed('/juegos');


      }),
      TextButton(child: Text('No'), onPressed: () {
      //Navigator.of(context).pop('No');


      }),
      ],
      ),
      ),
  Center(
        child:AlertDialog(
          title: Text('   Pinturas'),
          content: Text('Todas las pinturas son del periodo barroco?'),
          backgroundColor: Colors.purple[100],
          key: Key('5'),
          actions: <Widget>[
            TextButton(child: Text('Si'), onPressed: () {
              // Navigator.of(context).pushNamed('/juegos');
              //final player = AudioCache();
              //player.play('templarios.mp3');
              Get.toNamed('/juegos');


            }),
            TextButton(child: Text('No'), onPressed: () {
              //Navigator.of(context).pop('No');


            }),
          ],
        ),
  ),
  Center(
        child:AlertDialog(
          title: Text('   Incorrecto Vuelva a intentar'),
          content: Text('Es la pintura renacentista que abarca el período de la historia del arte europeo entre el arte de la Edad Media y el barroco.\n Como todo el arte del Renacimiento, la pintura de esta época está relacionada con la idea de volver a la antigüedad clásica,\n el impacto que tuvo el humanismo sobre artistas y sus patronos,\n gracias a la adquisición de nuevas sensibilidades y técnicas artísticas.'),
          backgroundColor: Colors.purple[100],
          key: Key('6'),
          actions: <Widget>[
            TextButton(child: Text('Aceptar'), onPressed: () {
              // Navigator.of(context).pushNamed('/juegos');
              //final player = AudioCache();
              //player.play('templarios.mp3');
              Get.toNamed('/juegos');


            }),
            /*TextButton(child: Text('No'), onPressed: () {
              //Navigator.of(context).pop('No');


            }),*/
          ],
        ),
  ),

    //showDialog(
    //context:context,
    //builder:(context) =>
    Center(

      child:  AlertDialog(
        title: Text('   TecnoArt'),
        content: Text('Felicitaciones Superaste el Nivel!!'),
        backgroundColor: Colors.purple[100],
        key: Key('7'),
        actions: <Widget>[
          TextButton(child: Text('Continuar'), onPressed: () {
            // Navigator.of(context).pushNamed('/juegos');
            final player = AudioCache();
            player.play('templarios.mp3');

          }),
          TextButton(child: Text('Salir'), onPressed: () {
            //Navigator.of(context).pop('No');


          }),
        ],
      ),
      //),
    ),
    Center(

      child:  AlertDialog(
          title: Text('   TecnoArt'),
          content: Text('Esta seguro que quiere salir?'),
          backgroundColor: Colors.purple[100],
          key: Key('8'),
          actions: <Widget>[
          TextButton(child: Text('Si'), onPressed: () {
           // Navigator.of(context).pushNamed('/juegos');
            final player = AudioCache();
            player.play('templarios.mp3');

            }),
          TextButton(child: Text('No'), onPressed: () {
            //Navigator.of(context).pop('No');


            }),
          ],
          ),
    //),
    ),




  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
    ),
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/fondo1.jpg'),fit: BoxFit.cover
        ),
      ),
      child: StreamBuilder<List<Usuario>>(
        stream: _usuarioBloc.usuarioListStream,
        builder: (BuildContext context,AsyncSnapshot<List<Usuario>> snapshot) {
          return AnimatedSwitcher(
            duration: Duration(milliseconds: 2000),
            reverseDuration: Duration(milliseconds: 5000),
            transitionBuilder: (child, animation) =>
                ScaleTransition(
                  child: SizedBox.expand(child: child),
                  scale: animation,
                ),
            // switchInCurve: Curves.bounceIn,
            // switchOutCurve: Curves.bounceOut,
            // switchInCurve: Curves.easeIn,
            // switchOutCurve: Curves.easeOut,
            child: widgets[index],
          );

        }
    ),
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.arrow_forward_ios),
      onPressed: () {
        final isLastIndex = index == widgets.length - 1;

        setState(() => index = isLastIndex ? 0 : index + 1);
      },
    ),
  );





}