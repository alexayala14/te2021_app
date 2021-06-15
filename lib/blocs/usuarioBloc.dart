import 'dart:async';
import 'package:te2021_app/models/usuario.dart';

class UsuarioBloc {
  List<Usuario> _usuarioList = [
    Usuario(1, "Leonardo", 0, 1)
  ];

  //Streams Controllers
  final _usuarioListStreamController =StreamController<List<Usuario>>();
  final _usuarioPuntosIncrementoStreamController =StreamController<Usuario>();
  final _usuarioPuntosDecrementoStreamController =StreamController<Usuario>();

  //getters: streams y sinks
  Stream <List<Usuario>>get usuarioListStream => _usuarioListStreamController.stream;
  StreamSink <List<Usuario>> get usuarioListSink => _usuarioListStreamController.sink;
  StreamSink <Usuario> get usuarioPuntosIncremento => _usuarioPuntosIncrementoStreamController.sink;
  StreamSink <Usuario> get usuarioPuntosDecremento => _usuarioPuntosDecrementoStreamController.sink;

  //constructor
  UsuarioBloc(){
   _usuarioListStreamController.add(_usuarioList);
   _usuarioPuntosIncrementoStreamController.stream.listen(_incrementoPuntos);
   _usuarioPuntosDecrementoStreamController.stream.listen(_decrementoPuntos);
  }

 //funciones principales (core function)
  _incrementoPuntos(Usuario usuario){
    int puntosIniciales = usuario.puntos;
    int puntosInc = puntosIniciales++;

    _usuarioList[usuario.id - 1].puntos = puntosInc;
    usuarioListSink.add(_usuarioList);
  }

  _decrementoPuntos(Usuario usuario){
    int puntosIniciales = usuario.puntos;
    int puntosInc = puntosIniciales--;

    _usuarioList[usuario.id - 1].puntos = puntosInc;
    usuarioListSink.add(_usuarioList);
  }

  //dispose
  void dispose(){
    _usuarioPuntosIncrementoStreamController.close();
    _usuarioPuntosDecrementoStreamController.close();
    _usuarioListStreamController.close;
  }

}
