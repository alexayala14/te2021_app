import 'package:flutter/material.dart';


class MiBoton extends StatelessWidget {
  //final VoidCallback onPressed;
  final Function(String) onPressed;
  final String texto;
  //final RoundedRectangleBorder shape;

  MiBoton ({
    Key? key,
    required this.onPressed,
    required this.texto,
    //this.shape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){
          onPressed('texto');
        },
        child: Text(texto),

    );
  }
}