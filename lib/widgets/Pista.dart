import 'package:flutter/material.dart';
class PistaDisplay extends StatelessWidget {
  PistaDisplay({required this.pista});

  final String pista;

  @override
  Widget build(BuildContext context) {
    return Text('$pista',style: TextStyle(fontSize: 28,color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,),textAlign: TextAlign.center,);
  }
}