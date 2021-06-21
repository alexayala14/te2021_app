import 'package:flutter/material.dart';


class MiBoton extends StatelessWidget {
  //final VoidCallback onPressed;
  final Function(String) onPressed;
  final Function(int) onPressed1;
  final String texto;
  final int contador;
  //final RoundedRectangleBorder shape;

  MiBoton ({
    Key? key,
    required this.onPressed,
    required this.texto,
    required this.onPressed1,
    required this.contador,
    //this.shape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){
          onPressed(texto);
          onPressed1(contador);

        },
        child: Text(texto),

    );
  }
}