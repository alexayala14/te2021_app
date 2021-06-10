import 'package:flutter/material.dart';

class Carmen extends StatefulWidget {
  @override
  _CarmenState createState() => _CarmenState();
}


class _CarmenState extends State<Carmen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        /*child: IconButton(
          icon:Icon(Icons.agriculture_rounded,size: 30,color: Colors.purple,),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),*/
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 6,
                  child:AnimatedContainer(
                    // margin: EdgeInsets.all(5),
                    duration: Duration(milliseconds: 10000),
                    curve: Curves.elasticOut,

                    decoration: BoxDecoration(color: Colors.cyan,
                        border: Border.all(color: Colors.white,width: 5)
                    ),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex:1,
                            child:AnimatedContainer(
                        // margin: EdgeInsets.all(5),
                        duration: Duration(milliseconds: 10000),
                    curve: Curves.elasticOut,

                    decoration: BoxDecoration(color: Colors.cyan,
                        border: Border.all(color: Colors.white,width: 5),
                        borderRadius: const BorderRadius.all(const Radius.circular(5)),

                    ),
                            )
                        ),
                        Expanded(
                            flex:9,
                            child:AnimatedContainer(
                              // margin: EdgeInsets.all(5),
                              duration: Duration(milliseconds: 10000),
                              curve: Curves.elasticOut,

                              decoration: BoxDecoration(color: Colors.black,
                                  border: Border.all(color: Colors.white,width: 5),
                                borderRadius: const BorderRadius.all(const Radius.circular(5)),
                                  image: DecorationImage(
                                    image: AssetImage('assets/Coliseo.jpg',
                                    ),
                                  ),
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
              ),
              Expanded(
                flex: 6,
                child:AnimatedContainer(
                  // margin: EdgeInsets.all(5),
                  duration: Duration(milliseconds: 10000),
                  curve: Curves.elasticOut,

                  decoration: BoxDecoration(color: Colors.greenAccent,
                      border: Border.all(color: Colors.brown,width: 5)),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                          flex:9,
                          child:AnimatedContainer(
                            // margin: EdgeInsets.all(5),
                            duration: Duration(milliseconds: 10000),
                            curve: Curves.elasticOut,

                            decoration: BoxDecoration(color: Colors.black,
                                border: Border.all(color: Colors.white,width: 5),
                              borderRadius: const BorderRadius.all(const Radius.circular(5)),
                              image: DecorationImage(
                                image: AssetImage('assets/renacimiento.jpg',
                                ),
                              ),
                            ),
                          )
                      ),
                      Expanded(
                          flex:2,
                          child:AnimatedContainer(
                              margin: EdgeInsets.all(5),
                            duration: Duration(milliseconds: 10000),
                            curve: Curves.elasticOut,
                            child:Row(
                              children:<Widget>[
                            Card(
                                  margin: const EdgeInsets.all(50.0),
                                  child:
                                  IconButton(icon: Icon(Icons.account_balance),iconSize: 30, onPressed: (){
                                  //Navigator.of(context).pop();
                                },
                                  ),
                              ),
                                Card(
                                  margin: const EdgeInsets.all(50.0),
                                  child:
                                  IconButton(icon: Icon(Icons.account_balance),iconSize: 30, onPressed: (){
                                    //Navigator.of(context).pop();
                                  },
                                  ),
                                ),
                                Card(
                                  margin: const EdgeInsets.all(50.0),
                                  child:
                                  IconButton(icon: Icon(Icons.account_balance),iconSize: 30, onPressed: (){
                                    //Navigator.of(context).pop();
                                  },
                                  ),
                                ),
                                Card(
                                  margin: const EdgeInsets.all(50.0),
                                  child:
                                  IconButton(icon: Icon(Icons.account_balance),iconSize: 30, onPressed: (){
                                    showDialog(
                                      context:context,
                                    builder:(context) =>
                                    AlertDialog(
                                      title: Text('   Carmen San Diego'),
                                      content: Text('Esta seguro que quiere salir?'),
                                      backgroundColor: Colors.purple[100],
                                      actions: <Widget>[
                                        TextButton(child: Text('Si'), onPressed: () {
                                          Navigator.of(context).pushNamed('/juegos');
                                        }),
                                        TextButton(child: Text('No'), onPressed: () {
                                          Navigator.of(context).pop('No');
                                        }),
                                      ],
                                    ),
                                    );
                                  },
                                  ),
                                ),
                              ]
                            )
                            ),

                          )

                    ],
                  ),
                ),
              ),



      ],
        ),
      ),
    );
  }


}