import 'package:flutter/material.dart';
class PistaDisplay extends StatelessWidget {
  PistaDisplay({required this.pista});

  final String pista;

  @override
  Widget build(BuildContext context) {
    return Text('Pista:  $pista',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold,),);
  }
}