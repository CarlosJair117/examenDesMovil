
import 'dart:convert';

import 'package:flutter/services.dart';

class Data{

  List<dynamic> musica = [];
  List<dynamic> comida = [];

  Data() {
    cargarMusica();
    cargarComida();
  }

  Future<List<dynamic>> cargarMusica() async {
    final resp = await rootBundle.loadString('data/musica.json');
    Map dataMap = json.decode(resp);
    musica = dataMap['musica'];
    return musica;
  }

  Future<List<dynamic>> cargarComida() async {
    final resp2 = await rootBundle.loadString('data/comida.json');
    Map dataMap2 = json.decode(resp2);
    comida = dataMap2['comida'];
    return comida;
  }
}

final menuProvider = new Data();