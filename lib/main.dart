import 'package:flutter/material.dart';
import 'package:te2021_app/widgets/AcercaDe.dart';
import 'package:te2021_app/widgets/Galeria.dart';
import 'package:te2021_app/widgets/MenuJuegos.dart';
import 'package:te2021_app/widgets/MenuPrincipal.dart';
import 'package:te2021_app/widgets/Pregunta.dart';
import 'package:te2021_app/widgets/Respuesta.dart';
import 'package:te2021_app/widgets/Score.dart';
import 'package:te2021_app/widgets/Tutorial.dart';
import 'package:te2021_app/widgets/Carmen.dart';
import 'package:te2021_app/widgets/Mapa.dart';
import 'package:te2021_app/widgets/Pantalla.dart';
import 'package:te2021_app/widgets/Login.dart';
import 'package:te2021_app/widgets/SplashScreen.dart';
import 'package:te2021_app/widgets/SplashScreenPrincipal.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        backgroundColor: Colors.red,
      ),

      routes: {
        '/':(context) => SplashScreenPrincipal(),
        '/login':(context) => Login(),
        '/menuPrincipal':(context) => MenuPrincipal(),
        '/juegos':(context) => MenuJuegos(),
        '/galeria':(context) => Galeria(),
        '/tutorial':(context) => Tutorial(),
        '/acerca':(context) => AcercaDe(),
        '/carmen':(context) => Carmen(),
        '/mapa':(context) => Mapa(),
        //'/pregunta':(context) => Pregunta(),
        '/counterDisplay':(context) => Counter(),
        '/pantalla':(context) => Pantalla(),
        '/respuesta':(context) => Respuesta(),
        '/screen':(context) => SplashScreen(),
        //'/score':(context) => Score(parametro),


      },
    );
  }
}




