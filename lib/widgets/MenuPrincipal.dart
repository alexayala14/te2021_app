import 'package:flutter/material.dart';

import 'MenuLateral.dart';
import 'package:fluttertoast/fluttertoast.dart';
class MenuPrincipal extends StatelessWidget {
  List<String> events = [
    "Juegos",
    "Dices",
    "Galeria",
    "TecnoArt",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primer Menu'),
      ),
      drawer: MenuLateral(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo1.jpg'),fit: BoxFit.cover
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(10),
          child: GridView(
            //physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: events.map((title){
            return GestureDetector(
              child: Card(
                margin: const EdgeInsets.all(100.0),
                child: getCardByTitle(title)),
              onTap: (){
                Fluttertoast.showToast(msg:title);
                if (title=="Juegos")
                  Navigator.of(context).pushNamed('/juegos');
                else if(title=="Galeria")
                  Navigator.of(context).pushNamed('/galeria');
                else if(title=="TecnoArt")
                  Navigator.of(context).pushNamed('/mapa');
                else if(title=="Dices")
                  Navigator.of(context).pushNamed('/dados');
              },);
              }).toList(),
            ),
    ),
      )
    );
    }

    Column getCardByTitle(String title){
      String img = "";
      if (title=="Juegos")
        img = "assets/dados.png";
      else if(title=="Galeria")
        img = "assets/gale.jpg";
      else if(title=="TecnoArt")
        img = "assets/tecnoart.jpg";
      else if(title=="Dices")
        img = "assets/libreria.jpg";
      else
        img = "assets/libreria.jpg";

      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Center(
            child: Container(
              child: new Stack(
                children: <Widget>[
                  new Image.asset(
                    img,
                    width: 80.0,
                    height: 80.0,
                  )
                ],
              )
            ),
          ),Text(title,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
        ],
      );
    }
        /*IconButton(
          icon:Icon(Icons.assignment_ind_rounded,size: 30,color: Colors.purple,),
          onPressed: (){
            Navigator.of(context).pushNamed('/juegos');
          },
        ),*/

}