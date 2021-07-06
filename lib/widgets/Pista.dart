import 'package:flutter/material.dart';
class PistaDisplay extends StatelessWidget {
  PistaDisplay({required this.pista});

  final String pista;

  @override
  Widget build(BuildContext context) {
    return /*FittedBox(
      fit: BoxFit.scaleDown,
        child:*/ Text('$pista',style: TextStyle(fontSize: 27,color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,),maxLines: 4,/*textAlign: TextAlign.center,*/);
  }
}