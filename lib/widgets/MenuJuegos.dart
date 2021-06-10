import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class MenuJuegos extends StatelessWidget {
  List<String> events = [
    "Carmen",
    "Juego1",
    "Juego2",
    "Juego3",
    "Juego4",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Juegos'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/fondo1.jpg'),fit: BoxFit.cover
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Expanded(
          flex: 6,
          child:AnimatedContainer(
          // margin: EdgeInsets.all(5),
            duration: Duration(milliseconds: 10000),
            curve: Curves.elasticOut,
            child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                margin: const EdgeInsets.all(100.0),
                child: IconButton(icon: Icon(Icons.account_balance),iconSize: 80, onPressed: (){
                  Navigator.of(context).pop();
                },),
              ),
              Card(
                margin: const EdgeInsets.all(100.0),
                child: IconButton(icon: Icon(Icons.ondemand_video_outlined),iconSize: 80, onPressed: (){
                  Navigator.of(context).pushNamed('/carmen');
                },),
              ),

            ],
          ),
          )
          ),
          Expanded(
          flex: 6,
            child:AnimatedContainer(
          // margin: EdgeInsets.all(5),
          duration: Duration(milliseconds: 10000),
          curve: Curves.elasticOut,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  margin: const EdgeInsets.all(100.0),
                  child: IconButton(icon: Icon(Icons.account_balance),iconSize: 80, onPressed: (){
                    Navigator.of(context).pop();
                  },),
                ),
                Card(
                  margin: const EdgeInsets.all(100.0),
                  child: IconButton(icon: Icon(Icons.ondemand_video_outlined),iconSize: 80, onPressed: (){
                    Navigator.of(context).pushNamed('/carmen');
                  },),
                ),

              ],
            )
            )
          ),
          ]
        ),
      ),
    );
  }
}