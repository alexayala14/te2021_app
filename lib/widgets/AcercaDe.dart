import 'package:flutter/material.dart';
class AcercaDe extends StatelessWidget {
  final String texto = "    Acerca de:  Arte 2.0 es una plataforma pública diseñada para facilitar el aprendizaje sobre temas de historia del arte de manera online.\n"
  +"    Nuestra misión es hacer que los estudiantes aprendan sobre obras de arte de un modo didáctico.\n\n    Con claras herramientas de visualización de argumentos y una fácil e intuitiva navegación.\n    Arte 2.0 es la solución perfecta para ayudar a los estudiantes a desarrollar sus habilidades de razonamiento.\n"+
  "   Con arte 2.0 los profesores pueden cargar:\n\n"+
  "   •	Preguntas sobre el tema a desarrollar\n"+
  "   •	Imágenes en la galería\n"+
  "   •	Mapas del tema a desarrollar"+ " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de',),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
          text: texto, style: TextStyle(color: Colors.purple, fontSize: 30, fontWeight: FontWeight.bold),
    ),

      ),
      ),
    );
  }
}