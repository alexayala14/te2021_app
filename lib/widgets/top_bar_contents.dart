import 'dart:html';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:just_audio/just_audio.dart';
class TopBarContents extends StatefulWidget {
  final double opacity;
  final String _user;

  TopBarContents(this.opacity,this._user);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  final String _texto='Arte 2.0 es una plataforma pública diseñada para facilitar el aprendizaje\n\nsobre temas de historia del arte de manera online.\n\nNuestra misión es hacer que los estudiantes aprendan sobre obras de arte de un modo didáctico.\n\nCon claras herramientas de visualización de argumentos \n\ny una fácil e intuitiva navegación.\n\n Arte 2.0 es la solución perfecta para ayudar a los estudiantes\n\n a desarrollar sus habilidades de razonamiento.\n\nCon arte 2.0 los profesores pueden cargar preguntas e imágenes sobre el tema a desarrollar.\n\nEste software se creó en el año 2021 para la materia Tecnología Educativa \n\nde la carrera Ingeniería en Sistemas de Información\n\n de la Universidad Tecnológica Nacional – Facultad Regional Córdoba.\n\nCreadores del Software:\n\n\n•Alex Ayala\n\n• Ramiro Baudo\n\n• Gastón Moya';
  //final player = AudioCache();
  //final assetsAudioPlayer = AssetsAudioPlayer();
  final player = AudioPlayer();
  /*var duration = await player.setUrl('https://foo.com/bar.mp3');
  var duration = await player.setFilePath('/path/to/file.mp3');*/
  //var duration = await player.setAsset('templarios.mp3');
  bool bandera=false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        //color: Colors.blueGrey.shade900.withOpacity(widget.opacity),
        color: Colors.brown.shade900,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedTextKit(
                animatedTexts: [
                  /*RotateAnimatedText('Arte 2.0'),
                  RotateAnimatedText('OPTIMISTIC'),*/
                  WavyAnimatedText(
                    'Arte 2.0',
                    textStyle: const TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 50,
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 4,
                    ),
                  ),
                ],
                isRepeatingAnimation: true,
                totalRepeatCount: 10,
              ),
             /* Text(
                'Arte 2.0',
                style: TextStyle(
                  color: Colors.blueGrey.shade100,
                  fontSize: 50,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 4,
                ),
              ),*/
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: screenSize.width / 16),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[0] = true
                              : _isHovering[0] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          /*Text(
                            'Discover',
                            style: TextStyle(
                              color: _isHovering[0]
                                  ? Colors.blue.shade200
                                  : Colors.white,
                            ),
                          ),*/
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[0],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 20),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[1] = true
                              : _isHovering[1] = false;
                        });
                      },
                      onTap: () {
                        /*player.setAsset('templarios.mp3');

                        if (bandera==true){
                          player.stop();
                          setState(() {
                            bandera=false;
                          });

                        }else if(bandera==false){
                          player.play();
                          setState(() {
                            bandera=true;
                          });
                        }*/
                        /*player.clearAll();*/
                        showAboutDialog(
                          context: context,
                          applicationName: 'Arte 2.0',
                          applicationVersion: '2.0',
                          applicationLegalese: '${_texto},',



                        );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Acerca De',
                            style: TextStyle(
                              color: _isHovering[1]
                                  ? Colors.blue[200]
                                  : Colors.white70,
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[1],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[2] = true : _isHovering[2] = false;
                  });
                },
                onTap: () {},
                child: Text(
                  'Usuario:${widget._user}',
                  style: TextStyle(
                    color: _isHovering[2] ? Colors.blue[200] : Colors.white70,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(
                width: screenSize.width / 50,
              ),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[3] = true : _isHovering[3] = false;
                  });
                },
                onTap: () {
                  //Navigator.of(context).pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);},
                Navigator.popAndPushNamed(context, '/login');
                },
                child: Text(
                  'Salir',
                  style: TextStyle(
                    color: _isHovering[3] ? Colors.blue[200] : Colors.white70,
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
