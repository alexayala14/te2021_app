import 'package:te2021_app/widgets/responsive.dart';
import 'package:flutter/material.dart';

class FloatingQuickAccessBar extends StatefulWidget {
  const FloatingQuickAccessBar({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  _FloatingQuickAccessBarState createState() => _FloatingQuickAccessBarState();
}

class _FloatingQuickAccessBarState extends State<FloatingQuickAccessBar> {
  List _isHovering = [false, false, false, false];
  List<Widget> rowElements = [];
  final String _textoRegla="\nBIENVENIDO A ARTE 2.0\n\nArte 2.0 es un juego donde tendrás que llevar al límite\ntu conocimiento sobre el \"Arte del Renacimiento\".\nPara comenzar el juego debes seleccionar la opción de \"INICIAR\".\nEl juego consta de una serie de preguntas donde deberás\n seleccionar la respuesta correcta y conseguir\n la mayor cantidad de puntos posible.\nCada respuesta acertada sumará 10 PUNTOS.\nPuedes obtener pistas seleccionando el botón \"PISTA\",\n ¡Pero piensalo bien antes de hacerlo! \nCada vez que seleciones dicho botón se te restarán 5 PUNTOS.\nTienes hasta un total de 3 pistas por pregunta.\nEn caso de que la respuesta seleccionada sea incorrecta,\n se utilizará automaticamente una pista, restando sus respectivos puntos.\nUna vez respondas correctamente a la pregunta\n o falles un total de 3 veces, \npasarás a la siguiente pregunte y así sucesivamente.\nCada 5 preguntas la dificultad aumenta, \nvariando la modalidad de las consignas hasta finalizar el juego.\nAl finalizar el juego podrás ver tus PUNTOS TOTALES,\nRESPUESTAS CORRECTAS y RESPUESTAS INCORRECTAS.\n\n¡MUESTRANOS QUE TANTO SABES! BUENA SUERTE :)";
  List<String> items = ['Iniciar Juego', 'Reglas del Juego'];
  List<IconData> icons = [
    Icons.videogame_asset,
    Icons.help,
    Icons.people,
    Icons.wb_sunny
  ];
  final color = const Color(0xFF6D071A);

  List<Widget> generateRowElements() {
    rowElements.clear();

    for (int i = 0; i < items.length; i++) {
      Widget elementTile = InkWell(
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        onHover: (value) {
          setState(() {
            value ? _isHovering[i] = true : _isHovering[i] = false;
          });
        },
        onTap: () {
          if(items[i] == 'Iniciar Juego') {
            Navigator.of(context).pushNamed(
                                        '/pantalla');
          }else if(items[i] == 'Reglas del Juego'){
            showAboutDialog(
              context: context,
              applicationName: 'Arte 2.0',
              applicationVersion: '2.0',
              applicationLegalese: '${_textoRegla},',

            );
          }

        },
        child: Text(
          items[i],
          style: TextStyle(
            color: _isHovering[i] ? Colors.white70 : Colors.white,
            fontSize: 25,
          ),
        ),
      );
      Widget spacer = SizedBox(
        height: widget.screenSize.height / 5,
        child: VerticalDivider(
          width: 1,
          color: Colors.yellow[100],
          thickness: 6,
        ),
      );
      rowElements.add(elementTile);
      if (i < items.length - 1) {
        rowElements.add(spacer);
      }
    }

    return rowElements;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(
          top: widget.screenSize.height * 0.40,
          left: ResponsiveWidget.isSmallScreen(context)
              ? widget.screenSize.width / 12
              : widget.screenSize.width / 5,
          right: ResponsiveWidget.isSmallScreen(context)
              ? widget.screenSize.width / 12
              : widget.screenSize.width / 5,
        ),
        child: ResponsiveWidget.isSmallScreen(context)
            ? Column(
                children: [
                  ...Iterable<int>.generate(items.length).map(
                    (int pageIndex) => Padding(
                      padding:
                          EdgeInsets.only(top: widget.screenSize.height / 80),
                      child: Card(
                        elevation: 4,
                        color: color,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: widget.screenSize.height / 45,
                              bottom: widget.screenSize.height / 45,
                              left: widget.screenSize.width / 20),
                          child: Row(
                            children: [
                              Icon(
                                icons[pageIndex],
                                color: Colors.blueGrey,
                              ),
                              SizedBox(width: widget.screenSize.width / 20),
                              InkWell(
                                splashColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                onTap: () {
                                  if(items[pageIndex] == 'Iniciar Juego') {
                                    Navigator.of(context).pushNamed(
                                        '/pantalla');

                                  }else if(items[pageIndex] == 'Reglas del Juego'){
                                    showAboutDialog(
                                      context: context,
                                      applicationName: 'Arte 2.0',
                                      applicationVersion: '2.0',
                                      //applicationLegalese: '${_textoRegla},',
                                      children: [
                                        Text('${_textoRegla}',style: TextStyle(
                                          fontSize: 40, fontWeight: FontWeight.bold,),),
                                      ],

                                    );
                                  }
                                  //print("Lo que trae es:${items[pageIndex]}");
                                },
                                child: Text(
                                  items[pageIndex],
                                  style: TextStyle(
                                      color: Colors.blueGrey, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Card(
                elevation: 5,
                color: color,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                Radius.circular(10),
                ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: widget.screenSize.height / 50,
                    bottom: widget.screenSize.height / 50,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: generateRowElements(),
                  ),

                ),
              ),
      ),
    );
  }
}
