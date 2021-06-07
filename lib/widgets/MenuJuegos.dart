import 'package:flutter/material.dart';
class MenuJuegos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Juegos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           IconButton(icon: Icon(Icons.account_balance),iconSize: 18, onPressed: (){
             Navigator.of(context).pop();
           },),
            IconButton(icon: Icon(Icons.ondemand_video_outlined),iconSize: 18, onPressed: (){
              Navigator.of(context).pushNamed('/carmen');
            },)
           /* Icon(Icons.agriculture_rounded,size: 30,color: Colors.purple,),
              onPressed: (){
              Navigator.of(context).pop();
            },
            Icon(Icons.account_balance,size: 30,color: Colors.purple,),
              onPressed: (){
              Navigator.of(context).pop();
          },*/
          ],
        ),
      ),
    );
  }
}