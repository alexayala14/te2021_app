import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:te2021_app/widgets/Boton.dart';
class Score extends StatelessWidget{
 final int _counter;
 final int _counterOk;
 final int _counterNotOk;
 final String _texto='Arte 2.0 es una plataforma pública diseñada para facilitar el aprendizaje\n\nsobre temas de historia del arte de manera online.\n\nNuestra misión es hacer que los estudiantes aprendan sobre obras de arte de un modo didáctico.\n\nCon claras herramientas de visualización de argumentos \n\ny una fácil e intuitiva navegación.\n\n Arte 2.0 es la solución perfecta para ayudar a los estudiantes\n\n a desarrollar sus habilidades de razonamiento.\n\nCon arte 2.0 los profesores pueden cargar preguntas e imágenes sobre el tema a desarrollar.\n\nEste software se creó en el año 2021 para la materia Tecnología Educativa \n\nde la carrera Ingeniería en Sistemas de Información\n\n de la Universidad Tecnológica Nacional – Facultad Regional Córdoba.\n\nCreadores del Software:\n\n\n•Alex Ayala\n\n• Ramiro Baudo\n\n• Gastón Moya';
Score(this._counter,this._counterOk,this._counterNotOk);


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed:() {

          Navigator.of(context).pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);
          },
        child: const Icon(Icons.close),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/tablero.png'),fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
        /* image: DecorationImage(
                  image: AssetImage('assets/roma.jpg'),fit: BoxFit.cover
              ),*/
      ),
      child:Center(

        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Text('Resultados\n\n ',style: TextStyle(fontSize: 60,color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,),textAlign: TextAlign.center,),
          Text('Respuestas Incorrectas:${_counterNotOk}\n\nRespuestas Correctas:${_counterOk}\n\nPuntos:${_counter}\n\n',style: TextStyle(fontSize: 40,color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,),textAlign: TextAlign.center,),
         Center( child:Table(
           children: [TableRow(
             children: [
               //SizedBox(width: 30),
               ElevatedButton(
                 onPressed: (){
                   Navigator.of(context).pushNamedAndRemoveUntil('/pantalla', (Route<dynamic> route) => false);
                 },//onPressed,
                 child: Text('Reintentar',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                 style: ElevatedButton.styleFrom(
                   padding: EdgeInsets.all(15.0),
                   minimumSize: Size(30.0,30.0),
                 ),
               ),
               SizedBox(width: 10),
               ElevatedButton(
                 onPressed: (){
                  showAboutDialog(
                      context: context,
                      applicationName: 'Arte 2.0',
                      applicationVersion: '2.0',
                      applicationLegalese: '${_texto},',



                  );
                 },//onPressed,
                 child: Text('Acerca de',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                 style: ElevatedButton.styleFrom(
                   padding: EdgeInsets.all(15.0),
                   minimumSize: Size(30.0,30.0),
                 ),
               ),
             ]
           )],
         )
         ),
          /* MiBoton(
            onPressed: (parametro){
              print("paso por Score");
              print("Es el Parametro: "+parametro);
              Navigator.of(context).pushNamed('/menuPrincipal');
            },
            onPressed1: (contador){
              print("paso por Score");
              print("Es el Parametro: "+"$contador");
              Navigator.of(context).pushNamed('/menuPrincipal');
            },
            texto: 'LOS PUNTOS SON:${_counter}',
            contador: 1,
          )*/
        ],
      ),
      ),
    ),
    );
  }
}