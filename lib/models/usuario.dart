
class Usuario {
  late int _id;
  late String _nombre;
  late int _puntos;
  late int _partidas;


  Usuario(this._id, this._nombre, this._puntos, this._partidas);

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get nombre => _nombre;

  int get partidas => _partidas;

  set partidas(int value) {
    _partidas = value;
  }

  int get puntos => _puntos;

  set puntos(int value) {
    _puntos = value;
  }

  set nombre(String value) {
    _nombre = value;
  }
}