import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MenuLateral extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text("artABM"),
            accountEmail: Text("te2021@gmail.com"),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
                image: DecorationImage(
                    image: AssetImage('assets/renacimiento.jpg',
                    ),
                ),
            ),
          ),
          Ink(
            color: Colors.indigo,
            child: new ListTile(
              title: Text("Inicio", style: TextStyle(color: Colors.white),),
              onTap: (){
                Navigator.of(context).pushNamed('/menuPrincipal');
              },
            ),
          ),
          new ListTile(
            title: Text("Juegos",),
            onTap: (){
              Navigator.of(context).pushNamed('/juegos');
            },
          ),
          new ListTile(
            title: Text("Galeria"),
            onTap: (){
              Navigator.of(context).pushNamed('/galeria');
            },
          ),
          new ListTile(
            title: Text("Tutorial"),
            onTap: (){
              Navigator.of(context).pushNamed('/tutorial');
            },
          ),
          new ListTile(
            title: Text("TecnoArt"),
            onTap: (){
              Navigator.of(context).pushNamed('/mapa');
            },
          ),
          new ListTile(
            title: Text("Acerca de"),
            onTap: (){
              Navigator.of(context).pushNamed('/acerca');
            },
          )

        ],
      ) ,
    );
  }
}
