import 'package:flutter/material.dart';

import 'MenuLateral.dart';

class MenuPrincipal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primer Menu'),
      ),
      drawer: MenuLateral(),
      body: Center(
        child: IconButton(
          icon:Icon(Icons.assignment_ind_rounded,size: 30,color: Colors.purple,),
          onPressed: (){
            Navigator.of(context).pushNamed('/juegos');
          },
        ),
      ),
    );
  }
}