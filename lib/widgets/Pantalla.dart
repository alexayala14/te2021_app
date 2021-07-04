import 'dart:html';
import 'dart:io';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:te2021_app/widgets/Pregunta.dart';
import 'package:te2021_app/widgets/Pista.dart';
import 'package:te2021_app/widgets/Score.dart';
import 'package:auto_size_text/auto_size_text.dart';
enum SingingCharacter { verdadero,leonardo, dali, goya,falso,greco,boticelli,brueghel,tiziano,miguel,giovanni,rafael }

class Pantalla extends StatefulWidget {
  const Pantalla({Key? key}) : super(key: key);

  @override
  State<Pantalla> createState() => _PantallaState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _PantallaState extends State<Pantalla> with SingleTickerProviderStateMixin {
  SingingCharacter? _character = SingingCharacter.verdadero;
  bool bandera=true;
  int _counter=0;
  String pista= "Necesita ayuda? Presione el boton de pista.";
  String imagen='assets/creacion.jpg';
  bool respuestaOk=false;
  int _counterCicle=0;
  int _counterRespuesta=0;
  int _counterOk=0;
  int _counterNotOk=0;
  bool banderaPista=false;
  bool toggleable=true;
  String _pintor1= 'Leonardo da Vinci';
  String _pintor2='Salvador Dali';
  String _pintor3='Goya';
  String _pintor4='Miguel Angel Buonarroti';
  String _respuesta="";
  String _descripcion="La creación de Adán";
  String _pregunta="¿Que artista renacentista pinto la obra  ";
  SingingCharacter _character1=SingingCharacter.leonardo;
  SingingCharacter _character2=SingingCharacter.dali;
  SingingCharacter _character3=SingingCharacter.goya;
  SingingCharacter _character4=SingingCharacter.miguel;
  SingingCharacter _characterVerdadero=SingingCharacter.miguel;
  BoxFit _fit=BoxFit.contain;
  String _imagen1='assets/leonardo1.jpg';
  String _imagen2='assets/dali.jpg';
  String _imagen3='assets/goya.jpg';
  String _imagen4='assets/miguelangel.jpg';
  late AnimationController _animationController;
  /*late AnimationController _animationController1;
  late AnimationController _animationController2;*/
  late Animation <double> scaleAnimation;
  late Animation <double> translateAnimation;
  late Animation <double> rotateAnimation;
  final player = AudioCache();
  late FToast fToast;
  /*late AudioCache cache; // you have this
  late AudioPlayer player; // create this*/


  @override
  void initState() {
  _animationController = new AnimationController(duration: Duration(seconds: 5),vsync: this);
  /*_animationController1 = new AnimationController(duration: Duration(seconds: 3),vsync: this);
  _animationController2 = new AnimationController(duration: Duration(seconds: 3),vsync: this);*/
  scaleAnimation = Tween<double>(begin: 1,end: 1.1).animate(_animationController);
  translateAnimation = Tween<double>(begin: 0,end: 50).animate(CurvedAnimation(parent: _animationController,curve: Curves.elasticInOut));
  rotateAnimation = Tween<double>(begin: 0,end: 50).animate(CurvedAnimation(parent: _animationController,curve: Curves.decelerate));
  fToast = FToast();
  fToast.init(context);
  super.initState();
  }

  _showToast() {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.greenAccent,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.check),
          SizedBox(
            width: 12.0,
          ),
          Text("La Respuesta es: ${_respuesta}"),
        ],
      ),
    );


  /*  fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: Duration(seconds: 2),
    );*/

    // Custom Toast Position
    fToast.showToast(
        child: toast,
        toastDuration: Duration(seconds: 5),
        positionedToastBuilder: (context, child) {
          return Positioned(
            child: child,
            top: 16.0,
            left: 16.0,
          );
        });
  }

  void _increment() {
    setState(() {
      _counter=_counter + 10;
    });
  }
  void _decrement() {
    setState(() {
      _counter=_counter - 5;
    });
  }
  void _incrementCicle() {
    setState(() {
      ++_counterCicle;
    });
  }

  void _incrementCounterOk() {
    setState(() {
      ++_counterOk;
    });
  }
  void _incrementCounterNotOk() {
    setState(() {
      ++_counterNotOk;
    });
  }

  void _incrementRespuesta() {
    setState(() {
      ++_counterRespuesta;
    });
  }

  void _changePista(){
    setState(() {
      if(banderaPista==true && _counterCicle==0){
        if(_counterRespuesta==0){
          pista="Desarrolló su labor artística a lo largo de más de setenta años entre Florencia y Roma";
          banderaPista=false;
        }else if(_counterRespuesta==1){
        pista= "Pinto sobre yeso el techo de la Capilla Sixtina en el Vaticano";
        banderaPista=false;
        }else if(_counterRespuesta==2){
          pista= "Fue muy admirado por sus contemporáneos, que le llamaban el Divino";
          banderaPista=false;
        }
        _respuesta="Miguel Angel Buonarroti";
      }else if(banderaPista==true && _counterCicle==1){

        if(_counterRespuesta==0){
          pista= "A los 25 años obtuvo su primer encargo oficial, la decoración de las Estancias Vaticanas,\n donde pintó algunos frescos como La escuela de Atenas";
          banderaPista=false;
        }else if(_counterRespuesta==1){
          pista= "Nació en Viernes Santo y falleció en esta misma festividad el día que cumplía 37 años";
          banderaPista=false;
        }else if(_counterRespuesta==2){
          pista= "Nació en Urbino —una pequeña ciudad de la Italia central—, en la región de Marcas";
          banderaPista=false;
        }
        _respuesta="Rafael Sanzio";
      }else if(banderaPista==true && _counterCicle==2){

        if(_counterRespuesta==0){
          pista="Su obra se ha considerado exponente máximo de la gracia lineal\n de la pintura del primer Renacimiento";
          banderaPista=false;
        }else if(_counterRespuesta==1){
          pista= "Fue un pintor del Quattrocento italiano,\nSu nombre real era Alessandro di Mariano di Vanni Filipepi";
          banderaPista=false;
        }else if(_counterRespuesta==2){
          pista= "En 1467 volvió a Florencia, frecuentando el taller de Andrea del Verrocchio, donde trabajó al lado de Leonardo da Vinci";
          banderaPista=false;
        }
        _respuesta="Sandro Botticelli";
      }else if(banderaPista==true && _counterCicle==3){

        if(_counterRespuesta==0){
          pista="Fue un pintor italiano del Renacimiento,\n uno de los mayores exponentes de la Escuela veneciana";
          banderaPista=false;
        }else if(_counterRespuesta==1){
          pista= "retrató a la clase dirigente de su época, recibió encargos de comunidades religiosas\n y de la nobleza, pintó paisajes, reflejó el clasicismo renacentista \ny anticipó algunas cualidades del Barroco";
          banderaPista=false;
        }else if(_counterRespuesta==2){
          pista= "Los orígenes creativos se encuentran influenciados por su maestro Bellini y por Giorgione";
          banderaPista=false;
        }
        _respuesta="Tiziano Vecellio";
      }else if(banderaPista==true && _counterCicle==4){

        if(_counterRespuesta==0){
          pista="Es considerado el pintor holandés más importante del siglo XVI. Con Jan Van Eyck, el Bosco y Pedro Pablo Rubens";
          banderaPista=false;
        }else if(_counterRespuesta==1){
          pista= "Fue un pintor y grabador brabanzón. Fundador de la dinastía de pintores Brueghel";
          banderaPista=false;
        }else if(_counterRespuesta==2){
          pista= "Es conocido por sus paisajes, género en el que alcanzó una notable importancia.\n Se le suele considerar como el primer artista\n occidental que pintó paisajes por sí mismos";
          banderaPista=false;
        }
        _respuesta="Pieter Brueghel el Viejo";
      }else if(banderaPista==true && _counterCicle==5){

        if(_counterRespuesta==0){
          pista= "Pista Pintor Nacido en 1541, en Heraclión, actual capital de Creta (Grecia)";
          banderaPista=false;
        }else if(_counterRespuesta==1){
          pista= "Fue un pintor de retablos, por ello se comienza con el retablo de Santo Domingo, el primero que concibió";
          banderaPista=false;
        }else if(_counterRespuesta==2){
          pista= "fue un gran retratista.La composición y el estilo están aprendidos de Tiziano,\n la colocación de la figura, normalmente de medio cuerpo\n y los fondos neutros.";
          banderaPista=false;
        }
        _respuesta="El Greco";
      }else if(banderaPista==true && _counterCicle==6){

        if(_counterRespuesta==0){
          pista="Pintada en 1565 por Pieter Brueghel el Viejo, pintor holandés de la escuela flamenca.";
          banderaPista=false;
        }else if(_counterRespuesta==1){
          pista= "Este óleo se encuentra actualmente en el Museo Boymans Van Beuningen, Róterdam, Holanda.";
          banderaPista=false;
        }else if(_counterRespuesta==2){
          pista= "Pone el énfasis en gran edificio de la tradición judía, abandonado y con un aire tétrico.";
          banderaPista=false;
        }
        _respuesta="Torre de babel";
      }else if(banderaPista==true && _counterCicle==7){

        if(_counterRespuesta==0){
          pista="Se trata de uno de los cuadros más representativos del renacimiento italiano,\n pintado entre 1484 y 1486, por Sandro Botticelli";
          banderaPista=false;
        }else if(_counterRespuesta==1){
          pista= "Se encuentra actualmente en la Galería Uffizi, Florencia.";
          banderaPista=false;
        }else if(_counterRespuesta==2){
          pista= "Este cuadro fue en su tiempo una obra revolucionaria por cuanto presentaba\n sin tapujos un desnudo no justificado por ningún componente religioso";
          banderaPista=false;
        }
        _respuesta="El nacimiento de Venus";
      }else if(banderaPista==true && _counterCicle==8){

        if(_counterRespuesta==0){
          pista="Fue pintada en 1501, por Leonardo da Vinci";
          banderaPista=false;
        }else if(_counterRespuesta==1){
          pista= "También conocida como Virgen de la rueca";
          banderaPista=false;
        }else if(_counterRespuesta==2){
          pista= "Muestra a un Jesús de niño alejándose de los brazos de su Madre y mirando la cruz";
          banderaPista=false;
        }
        _respuesta="La Virgen del huso";
      }else if(banderaPista==true && _counterCicle==9){

        if(_counterRespuesta==0){
          pista="Trozo de fresco pintado Miguel Ángel (1512) sobre yeso,\n en el techo de la Capilla Sixtina en el Vaticano";
          banderaPista=false;
        }else if(_counterRespuesta==1){
          pista= " Ilustra uno de los nueve episodios del Génesis representados\n allí por el artista toscano, en el cual\n Dios le da vida a Adán, el primer hombre.";
          banderaPista=false;
        }else if(_counterRespuesta==2){
          pista= "Es el cuarto de los paneles que representan episodios del Génesis en el techo de la capilla";
          banderaPista=false;
        }
        _respuesta="La creación de Adán";
      }else if(banderaPista==true && _counterCicle==10){

        if(_counterRespuesta==0){
          pista= "Tela al óleo pintada en 1538, por Tiziano";
          banderaPista=false;
        }else if(_counterRespuesta==1){
          pista= "También llamada Venus del perrito, es una célebre pintura\n al óleo sobre lienzo cuyas dimensiones son de 119 cm x 165 cm";
          banderaPista=false;
        }else if(_counterRespuesta==2){
          pista= "Desde 1736 se encuentra en la Galleria degli Uffizi (Florencia)";
          banderaPista=false;
        }
        _respuesta="Venus de Urbino";
      }else{
        pista= "Necesita ayuda? Presione el boton de pista.";
      }
    });
  }

  /*void _playFile() async{
    player = await cache.play('assets/templarios.mp3'); // assign player here
  }

  void _stopFile() {
    player.stop(); // stop the file like this
  }*/

  void _changeCicle() {
    setState(() {
      if(_counterCicle==1){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/madonna.jpg';
         _character1=SingingCharacter.miguel;
         _character2=SingingCharacter.rafael;
         _character3=SingingCharacter.dali;
        _character4=SingingCharacter.goya;
         _characterVerdadero=SingingCharacter.rafael;
         _pintor1= 'Miguel Ángel Buonarroti';
         _pintor2='Rafael Sanzio';
         _pintor3='Salvador Dali';
        _pintor4='Francisco de Goya';
        _imagen1='assets/miguelangel.jpg';
        _imagen2='assets/rafael.jpg';
        _imagen3='assets/dali.jpg';
        _imagen4='assets/goya.jpg';
        _descripcion="Madonna Sixtina";
        _pregunta="¿Que artista renacentista pinto la obra  ";

      }else if(_counterCicle==2){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/venus.jpg';
         _character1=SingingCharacter.boticelli;
         _character2=SingingCharacter.miguel;
         _character3=SingingCharacter.goya;
        _character4=SingingCharacter.rafael;
         _characterVerdadero=SingingCharacter.boticelli;
         _pintor1= 'Sandro Botticelli';
         _pintor2='Miguel Ángel Buonarroti';
         _pintor3='Francisco de Goya';
        _pintor4='Rafael Sanzio';
        _imagen1='assets/botticelli.jpg';
        _imagen2='assets/miguelangel.jpg';
        _imagen3='assets/goya.jpg';
        _imagen4='assets/rafael.jpg';
        _descripcion="El nacimiento de Venus";
        _pregunta="¿Que artista renacentista pinto la obra  ";

      }else if(_counterCicle==3){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/venusurbino.jpg';
         _character1=SingingCharacter.miguel;
         _character2=SingingCharacter.leonardo;
         _character3=SingingCharacter.tiziano;
        _character4=SingingCharacter.goya;
         _characterVerdadero=SingingCharacter.tiziano;
         _pintor1= 'Miguel Angel Buonarroti';
         _pintor2='Leonardo da Vinci';
         _pintor3='Tiziano Vecellio';
        _pintor4='Francisco de Goya';
        _imagen1='assets/miguelangel.jpg';
        _imagen2='assets/leonardo1.jpg';
        _imagen3='assets/tizziano.jpg';
        _imagen4='assets/goya.jpg';
        _descripcion="Venus de Urbino";
        _pregunta="¿Que artista renacentista pinto la obra  ";
      }else if(_counterCicle==4){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/torrebabelbruegel.jpg';
         _character1=SingingCharacter.leonardo;
         _character2=SingingCharacter.tiziano;
         _character3=SingingCharacter.brueghel;
        _character4=SingingCharacter.boticelli;
         _characterVerdadero=SingingCharacter.brueghel;
         _pintor1= 'Leonardo da vinci';
         _pintor2='Tiziano Vecellio';
         _pintor3='Pieter Brueghel el Viejo';
        _pintor4='Sandro Botticelli';
        _imagen1='assets/leonardo1.jpg';
        _imagen2='assets/tizziano.jpg';
        _imagen3='assets/elviejo.jpg';
        _imagen4='assets/botticelli.jpg';
        _descripcion="La Torre de Babel";
        _pregunta="¿Que artista renacentista pinto la obra  ";
      }else if(_counterCicle==5){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/veronicagreco.jpg';
         _character1=SingingCharacter.greco;
         _character2=SingingCharacter.tiziano;
         _character3=SingingCharacter.boticelli;
        _character4=SingingCharacter.dali;
         _characterVerdadero=SingingCharacter.greco;
         _pintor1= 'El Greco';
         _pintor2='Tiziano Vecellio';
         _pintor3='Sandro Botticelli';
        _pintor4='Salvador Dali';
        _imagen1='assets/greco.jpg';
        _imagen2='assets/tizziano.jpg';
        _imagen3='assets/botticelli.jpg';
        _imagen4='assets/dali.jpg';
        _descripcion="La Verónica";
        _pregunta="¿Que artista renacentista pinto la obra  ";
      }else if(_counterCicle==6){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/elviejo.jpg';
         _character1=SingingCharacter.leonardo;
         _character2=SingingCharacter.miguel;
         _character3=SingingCharacter.brueghel;
        _character4=SingingCharacter.dali;
         _characterVerdadero=SingingCharacter.brueghel;
         _pintor1= 'La Veronica';
         _pintor2='Adan y Eva';
         _pintor3='Torre de babel';
        _pintor4='Venus de Urbino';
        _imagen1='assets/veronicagreco.jpg';
        _imagen2='assets/adanevadurero.jpg';
        _imagen3='assets/torrebabelbruegel.jpg';
        _imagen4='assets/venusurbino.jpg';
        _descripcion="Pieter Brueghel el Viejo";
        _pregunta="¿Que obra pertenece al artista renacentista  ";
      }else if(_counterCicle==7){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/botticelli.jpg';
         _character1=SingingCharacter.leonardo;
         _character2=SingingCharacter.dali;
         _character3=SingingCharacter.goya;
        _character4=SingingCharacter.boticelli;
         _characterVerdadero=SingingCharacter.boticelli;
         _pintor1= 'La Mona Lisa';
         _pintor2='Vista de Toledo';
         _pintor3='La Virgen del huso';
        _pintor4='El nacimiento de Venus';
        _imagen1='assets/mona.jpg';
        _imagen2='assets/vistagreco.jpg';
        _imagen3='assets/virgenleonardo.jpg';
        _imagen4='assets/venus.jpg';
        _descripcion="Sandro Botticelli";
        _pregunta="¿Que obra pertenece al artista renacentista  ";
      }else if(_counterCicle==8){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/leonardo1.jpg';
         _character1=SingingCharacter.leonardo;
         _character2=SingingCharacter.dali;
         _character3=SingingCharacter.goya;
        _character4=SingingCharacter.dali;
         _characterVerdadero=SingingCharacter.leonardo;
         _pintor1= 'La Virgen del huso';
         _pintor2='Madonna Sixtina';
         _pintor3='Vista de Toledo';
        _pintor4='Adan y Eva';
        _imagen1='assets/virgenleonardo.jpg';
        _imagen2='assets/madonna.jpg';
        _imagen3='assets/vistagreco.jpg';
        _imagen4='assets/adanevadurero.jpg';
        _descripcion="Leonardo da vinci";
        _pregunta="¿Que obra pertenece al artista renacentista  ";
      }else if(_counterCicle==9){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/miguelangel.jpg';
         _character1=SingingCharacter.goya  ;
         _character2=SingingCharacter.dali;
         _character3=SingingCharacter.leonardo;
        _character4=SingingCharacter.miguel;
         _characterVerdadero=SingingCharacter.miguel;
         _pintor1= 'El Nacimiento de Venus';
         _pintor2='La Torre de Babel';
         _pintor3='La Mona Lisa';
        _pintor4='La creación de Adán ';
        _imagen1='assets/venus.jpg';
        _imagen2='assets/torrebabelbruegel.jpg';
        _imagen3='assets/mona.jpg';
        _imagen4='assets/creacion.jpg';
        _descripcion="Miguel Angel Buonarroti";
        _pregunta="¿Que obra pertenece al artista renacentista  ";
      }else if(_counterCicle==10){
        print("PASA POR EL CICLO ${_counterCicle}");
        imagen='assets/tizziano.jpg';
         _character1=SingingCharacter.leonardo;
         _character2=SingingCharacter.tiziano;
         _character3=SingingCharacter.goya;
        _character4=SingingCharacter.dali;
         _characterVerdadero=SingingCharacter.tiziano;
         _pintor1= 'Adan y Eva';
         _pintor2='Venus de Urbino';
         _pintor3='La Veronica';
        _pintor4='Vista e Toledo';
        _imagen1='assets/adanevadurero.jpg';
        _imagen2='assets/venusurbino.jpg';
        _imagen3='assets/veronicagreco.jpg';
        _imagen4='assets/vistagreco.jpg';
        _descripcion="Tiziano Vecellio";
        _pregunta="¿Que obra pertenece al artista renacentista  ";
        //_counterCicle=0;
      }else if(_counterCicle==11){
        print("PASA POR EL CICLO ${_counterCicle}");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed:() {
      //Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: BuildContext context), (route) => false);

          //player.play('templarios.mp3');
         // _playFile(); // assign player here
          //player.
          Navigator.of(context).pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);




        },
        child: const Icon(Icons.close),
        backgroundColor: Colors.brown,
      ),

      body:LayoutBuilder(
        builder: (_,BoxConstraints constraints) {
          final size = constraints.maxWidth< constraints.maxHeight ? constraints.maxWidth:constraints.maxHeight;
          print("EL VALOR ES: ${size}");
          print("EL VALOR ES: ${size/8}");
         return Center(

            child: Container(
              /*height: double.infinity,
      width: double.infinity,*/
              height:1000,
              width: double.maxFinite,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/pergamino.jpg'), fit: BoxFit.cover
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Spacer(),
                      AnimatedBuilder(
                          animation: _animationController,
                          builder: (BuildContext context, _) =>
                              Transform.rotate(
                                //scale:scaleAnimation.value,
                                //offset: Offset(rotateAnimation.value,0),
                                //angle:2*pi + 0.1,
                                angle: 0.01,
                                child: Transform(
                                  //transform: Matrix4.skewX(0),
                                  alignment: Alignment.center,
                                  transform: Matrix4.identity()
                                    ..setEntry(3, 2, 0.001)
                                    ..rotateY(rotateAnimation.value),
                                  child: ClipOval(
                                    /*decoration: BoxDecoration(
        color: Colors.black12,
        border: Border.all(),
        borderRadius: BorderRadius.circular(20),
        */ /*image: DecorationImage(
            image: AssetImage('${imagen}'),fit:BoxFit.cover,
        ),*/ /*
      ),*/
                                    child: new Image.asset('${imagen}',
                                      /*fit: _fit,*/
                                      height: size/3,
                                      width: size/3,
                                      fit: BoxFit.fill,

                                    ),
                                  ),
                                ),
                              )
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: AnimatedBuilder(
                            animation: _animationController,
                            builder: (BuildContext context, _) =>
                                Transform.scale(
                                  scale: scaleAnimation.value,
                                  //offset: Offset(rotateAnimation.value,0),
                                  //angle:2*pi + 0.1,
                                  //angle: 0.01,
                                  child: Transform(
                                    transform: Matrix4.skewX(0),
                                    /*alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)..rotateY(rotateAnimation.value),*/
                                    //alignment: Alignment.centerRight,
                                    child: CounterDisplay(count: _counter),
                                  ),
                                ),
                          ),
                        ),
                      ),
                      SizedBox(width: 50),
                    ],
                  ),
                  Text("${_descripcion}", style: TextStyle(fontSize: 30,
                    color: Colors.black.withOpacity(0.6),
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,),
                    textAlign: TextAlign.center,),
                  SizedBox(height: 30),
                  Text("${_pregunta + _descripcion}?", style: TextStyle(
                    fontSize: 45,
                    color: Colors.black.withOpacity(0.6),
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,),
                    textAlign: TextAlign.center,),
                  SizedBox(height: 30),
                  Text("Seleccione la opcion correcta", style: TextStyle(
                    fontSize: 40,
                    color: Colors.black.withOpacity(0.6),
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,),
                    textAlign: TextAlign.center,),
                  SizedBox(height: 40),
                  Center(
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(50.0),

                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: <Widget>[
                          AnimatedBuilder(
                            animation: _animationController,
                            builder: (BuildContext context, _) =>
                                Transform.rotate(
                                  //scale:scaleAnimation.value,
                                  //offset: Offset(rotateAnimation.value,0),
                                  //angle:2*pi + 0.1,
                                  angle: 0.01,
                                  child: Transform(
                                    //transform: Matrix4.skewX(0),
                                    alignment: Alignment.center,
                                    transform: Matrix4.identity()
                                      ..setEntry(3, 2, 0.001)
                                      ..rotateY(rotateAnimation.value),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          '${_imagen1}'),
                                      radius: size/13,
                                    ),
                                  ),
                                ),
                          ),
                          Theme(
                            data: ThemeData(
                                unselectedWidgetColor: Colors.black
                            ),
                            child: Expanded(child: ListTile(
                              title: AutoSizeText('${_pintor1}', style: TextStyle(
                                fontSize: 25,
                                color: Colors.black.withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle
                                    .italic,) /*,textAlign: TextAlign.center*/,maxLines: 4,),
                              leading: /*CircleAvatar(
                backgroundImage: AssetImage('assets/fondo1.jpg'),
                radius: 50,
              ),*/
                              Radio<SingingCharacter>(
                                value: _character1,
                                groupValue: _character,
                                toggleable: true,
                                autofocus: false,

                                onChanged: (SingingCharacter? value) {
                                  setState(() {
                                    _animationController.reset();
                                    /*_animationController1.reset();
                _animationController2.reset();*/
                                    _character = value;
                                    print("es el valor${value}");
                                    if (_characterVerdadero == value) {
                                      bandera = true;
                                      /*CounterIncrementor(onPressed: _increment);
                  CounterDisplay(count: _counter);*/
                                      respuestaOk = true;
                                      print(
                                          "EL VALOR DE LA BANDERA ES${bandera}");
                                      print("El contador tiene: ${_counter}");
                                      bandera = false;
                                    }
                                    else {
                                      print(
                                          "EL VALOR DE LA BANDERA ES${bandera}");
                                      respuestaOk = false;
                                    }
                                  });
                                },
                                activeColor: Colors.green,
                                //toggleable: true,
                              ),
                              //     CircleAvatar(
                              //     backgroundImage: AssetImage('assets/fondo1.jpg'),
                              //   ),
                              //   ],
                              // ),
                              //),

                            ),
                            ),
                          ),
                          AnimatedBuilder(
                            animation: _animationController,
                            builder: (BuildContext context, _) =>
                                Transform.rotate(
                                  //scale:scaleAnimation.value,
                                  //offset: Offset(rotateAnimation.value,0),
                                  //angle:2*pi + 0.1,
                                  angle: 0.01,
                                  child: Transform(
                                    //transform: Matrix4.skewX(0),
                                    alignment: Alignment.center,
                                    transform: Matrix4.identity()
                                      ..setEntry(3, 2, 0.001)
                                      ..rotateY(rotateAnimation.value),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          '${_imagen2}'),
                                      radius: size/13,
                                    ),
                                  ),
                                ),
                          ),
                          Theme(
                            data: ThemeData(
                                unselectedWidgetColor: Colors.black
                            ),
                            child: Expanded(child: ListTile(
                              title: AutoSizeText('${_pintor2}', style: TextStyle(
                                fontSize: 25,
                                color: Colors.black.withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,),maxLines: 4,),
                              leading: Radio<SingingCharacter>(
                                value: _character2,
                                groupValue: _character,
                                toggleable: true,
                                autofocus: false,
                                onChanged: (SingingCharacter? value) {
                                  setState(() {
                                    _animationController.reset();
                                    /*_animationController1.reset();
                _animationController2.reset();*/
                                    _character = value;
                                    print("es el valor${value}");
                                    if (_characterVerdadero == value) {
                                      bandera = true;
                                      respuestaOk = true;
                                      print(
                                          "EL VALOR DE LA BANDERA ES${bandera}");
                                      bandera = false;
                                    }
                                    else {
                                      print(
                                          "EL VALOR DE LA BANDERA ES${bandera}");
                                      respuestaOk = false;
                                    }
                                  });
                                },
                                activeColor: Colors.green,
                                //toggleable: true,
                              ),
                            ),
                            ),
                          ),
                          AnimatedBuilder(
                            animation: _animationController,
                            builder: (BuildContext context, _) =>
                                Transform.rotate(
                                  //scale:scaleAnimation.value,
                                  //offset: Offset(rotateAnimation.value,0),
                                  //angle:2*pi + 0.1,
                                  angle: 0.01,
                                  child: Transform(
                                    //transform: Matrix4.skewX(0),
                                    alignment: Alignment.center,
                                    transform: Matrix4.identity()
                                      ..setEntry(3, 2, 0.001)
                                      ..rotateY(rotateAnimation.value),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          '${_imagen3}'),
                                      radius: size/13,
                                    ),
                                  ),
                                ),
                          ),
                          Theme(
                            data: ThemeData(
                                unselectedWidgetColor: Colors.black
                            ),
                            child: Expanded(child: ListTile(
                              title: AutoSizeText('${_pintor3}', style: TextStyle(
                                fontSize: 25,
                                color: Colors.black.withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,),maxLines: 4,),
                              leading: Radio<SingingCharacter>(
                                value: _character3,
                                groupValue: _character,
                                toggleable: true,
                                autofocus: false,
                                onChanged: (SingingCharacter? value) {
                                  setState(() {
                                    _animationController.reset();
                                    /* _animationController1.reset();
                _animationController2.reset();*/
                                    _character = value;
                                    print("es el valor${value}");
                                    if (_characterVerdadero == value) {
                                      bandera = true;
                                      respuestaOk = true;
                                      print(
                                          "EL VALOR DE LA BANDERA ES${bandera}");
                                      bandera = false;
                                    }
                                    else {
                                      print(
                                          "EL VALOR DE LA BANDERA ES${bandera}");
                                      respuestaOk = false;
                                    }
                                  });
                                },
                                activeColor: Colors.green,
                                //toggleable: true,
                              ),
                            ),
                            ),
                          ),
                          AnimatedBuilder(
                            animation: _animationController,
                            builder: (BuildContext context, _) =>
                                Transform.rotate(
                                  //scale:scaleAnimation.value,
                                  //offset: Offset(rotateAnimation.value,0),
                                  //angle:2*pi + 0.1,
                                  angle: 0.01,
                                  child: Transform(
                                    //transform: Matrix4.skewX(0),
                                    alignment: Alignment.center,
                                    transform: Matrix4.identity()
                                      ..setEntry(3, 2, 0.001)
                                      ..rotateY(rotateAnimation.value),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          '${_imagen4}'),
                                      radius: size/13,
                                    ),
                                  ),
                                ),
                          ),
                          Theme(
                            data: ThemeData(
                                unselectedWidgetColor: Colors.black
                            ),
                            child: Expanded(child: ListTile(
                              title: AutoSizeText('${_pintor4}', style: TextStyle(
                                fontSize: 25,
                                color: Colors.black.withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,),maxLines: 4,),
                              leading: Radio<SingingCharacter>(
                                value: _character4,
                                groupValue: _character,
                                toggleable: true,
                                autofocus: false,
                                onChanged: (SingingCharacter? value) {
                                  setState(() {
                                    _animationController.reset();
                                    /*_animationController2.reset();
                    _animationController1.reset();*/
                                    _character = value;
                                    print("es el valor${value}");
                                    if (_characterVerdadero == value) {
                                      bandera = true;
                                      respuestaOk = true;
                                      print(
                                          "EL VALOR DE LA BANDERA ES${bandera}");
                                      bandera = false;
                                    }
                                    else {
                                      print(
                                          "EL VALOR DE LA BANDERA ES${bandera}");
                                      respuestaOk = false;
                                    }
                                  });
                                },
                                activeColor: Colors.green,
                                //toggleable: true,
                              ),
                            ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: size/17),
                  Center(

                    child: Table(
                      /*defaultVerticalAlignment: ,*/
                      children: [
                        TableRow(
                          children: [
                            SizedBox(width: size/17),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (bandera == true) {
                                    banderaPista = true;
                                    _changePista();
                                    //_animationController2.forward();
                                    //_animationController1.forward();
                                    _decrement();
                                    bandera = false;
                                  }
                                  /*if(_counterCicle==0){
                pista="El pintor pertenece al rencimiento, nacio en 1775";
              }*/

                                });
                              }, //onPressed,
                              child: Text('Pista', style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold,),),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(15.0),
                                minimumSize: Size(30.0, 30.0),
                              ),
                            ),
                            SizedBox(width: size/17),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  /*_incrementCicle();*/
                                  //_changeCicle();
                                  //banderaPista=false;
                                  //_changePista();
                                  if (_character !=
                                      SingingCharacter.verdadero) {
                                    bandera = true;
                                    if (_counterCicle < 10) {
                                      if (respuestaOk == true) {
                                        player.play('rueda.mp3');
                                        _increment();
                                        _incrementCicle();
                                        _changeCicle();
                                        _changePista();
                                        _incrementCounterOk();
                                        //_animationController1.forward();
                                        _animationController.forward();
                                        //_animationController.reset();
                                        //Navigator.of(context).pushNamed('/screen');
                                        respuestaOk = false;
                                        _counterRespuesta = 0;
                                      }
                                      else {
                                        _incrementRespuesta();
                                        if (_counterRespuesta <= 2) {
                                          banderaPista = true;
                                          _decrement();
                                          print(
                                              'la respuesta esss:${_counterRespuesta}');
                                          _changePista();
                                        } else {
                                          player.play('rueda.mp3');
                                          _incrementCicle();
                                          _changeCicle();
                                          _changePista();
                                          _incrementCounterNotOk();
                                          _counterRespuesta = 0;
                                          _animationController.forward();
                                          _showToast();
                                        }
                                      }
                                    } else {
                                      // Navigator.of(context).pushNamed('/score');
                                      Navigator.push(
                                          context,
                                          new MaterialPageRoute(
                                              builder: (context) =>
                                                  Score(_counter, _counterOk,
                                                      _counterNotOk)));
                                    }
                                  }
                                  else {
                                    pista =
                                    "Seleccione una opcion para continuar";
                                  }
                                });
                              }, //onPressed,
                              child: Text('Siguiente', style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold,),
                                textAlign: TextAlign.center,),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(15.0),
                                minimumSize: Size(30.0, 30.0),
                              ),

                            ),
                            SizedBox(width: size/17),
                            /* AnimatedBuilder(
              animation: _animationController, builder: (BuildContext context,_) => Transform.scale(
              scale:scaleAnimation.value,
              //offset: Offset(rotateAnimation.value,0),
              //angle:2*pi + 0.1,
              //angle: 0.01,
              child:Transform(
                transform: Matrix4.skewX(0),
                */ /*alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)..rotateY(rotateAnimation.value),*/ /*
                child:CounterDisplay(count: _counter),
              ),
            ),
            ),*/
                            SizedBox(width: size/17),
                            SizedBox(height: size/17),

                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size/17),
                  AnimatedBuilder(
                    animation: _animationController,
                    builder: (BuildContext context, _) =>
                        Transform.translate(
                          //scale:scaleAnimation.value,
                          offset: Offset(translateAnimation.value, 0),
                          //angle:2*pi + 0.1,
                          //angle: 0.01,
                          child: Transform(
                            transform: Matrix4.skewX(0),
                            alignment: Alignment.center,
                            /*transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)..rotateY(rotateAnimation.value),*/
                            child: PistaDisplay(pista: pista),

                          ),
                        ),
                  ),
                  /*Container(
            height: 100,
            width: 1500,
            alignment: Alignment.center,
            margin: EdgeInsets.all(30.0),

            decoration: BoxDecoration(
              color: Colors.brown,
             borderRadius: BorderRadius.circular(10),
             */ /* image: DecorationImage(
                  image: AssetImage('assets/roma.jpg'),fit: BoxFit.cover
              ),*/ /*
            ),
            child: AnimatedBuilder(
              animation: _animationController, builder: (BuildContext context,_) => Transform.translate(
              //scale:scaleAnimation.value,
              offset: Offset(translateAnimation.value,0),
              //angle:2*pi + 0.1,
              //angle: 0.01,
              child:Transform(
                transform: Matrix4.skewX(0),
                alignment: Alignment.center,
          */ /*transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)..rotateY(rotateAnimation.value),*/ /*
                child:PistaDisplay(pista:pista),

    ),
            ),
            ),
      ),*/
                  /*new Counter(),*/
                ],
              ),
            ),
          );
        }
    ),
    );
  }

}
