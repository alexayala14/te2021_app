import 'package:flutter/material.dart';
import 'package:te2021_app/widgets/AcercaDe.dart';
import 'package:te2021_app/widgets/Galeria.dart';
import 'package:te2021_app/widgets/MenuJuegos.dart';
import 'package:te2021_app/widgets/MenuPrincipal.dart';
import 'package:te2021_app/widgets/Tutorial.dart';
import 'package:te2021_app/widgets/Carmen.dart';
import 'package:te2021_app/widgets/Mapa.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        '/':(context) => MenuPrincipal(),
        '/juegos':(context) => MenuJuegos(),
        '/galeria':(context) => Galeria(),
        '/tutorial':(context) => Tutorial(),
        '/acerca':(context) => AcercaDe(),
        '/carmen':(context) => Carmen(),
        '/mapa':(context) => Mapa(),

      },
    );
  }
}






