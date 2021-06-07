import 'package:flutter/material.dart';
import 'package:video_player_360/video_player_360.dart';

class Galeria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeria'),
      ),
      body: Center(
        child: IconButton(
          icon:Icon(Icons.agriculture_rounded,size: 30,color: Colors.purple,),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),

      ),

    );
  }
}

/*
child: IconButton(
icon: Icon(Icons.ondemand_video_outlined,size: 30,color: Colors.cyan,),
),*/
