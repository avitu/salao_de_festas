import 'dart:math';

import 'package:flutter/material.dart';
import 'package:salao_de_festas00/data/dummy_reserva.dart';
import '../models/reserva_vars.dart';
// provider

// Users >>> ReservaListProvider
// metodos de editar / apagar e adicionar reservas
class ReservaListProvider with ChangeNotifier{
  final Map<String, Reserva> _items = {...DUMMY_RESERVA};

  //metodo get, que vai retornar lista de reservas
  List <Reserva> get all {
    return [..._items.values];
  }
  int get count {

    return _items.length;
  }

  //metodo byIndex
  Reserva byIndex(int i ){
  return _items.values.elementAt(i);
  }

  //metodo put
  //passando um elemento que já existe ele altera
  //se não existir ele incluí
  //verifica se o usuário não é nulo
  void put(Reserva user){
    if (user == null) {
      return;
    }

    //altera
    if (user.id != null &&
        user.id.trim().isNotEmpty &&
        _items.containsKey(user.id)) {
      _items.update(
        user.id,
            (_) => Reserva(
            id: user.id,
            name: user.name,
            email: user.email,
            telefone: user.telefone,
            data: user.data,
            blocoeap: user.blocoeap,
            horario: user.horario,
            avatarurl: user.avatarurl,
      ),);
    } else {
      //incluindo, adicionando se não tiver presente
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(id, () => Reserva(
        id: id,
        name: user.name,
        email: user.email,
        telefone: user.telefone,
        data: user.data,
        avatarurl: user.avatarurl,
        blocoeap: user.blocoeap,
        horario: user.horario,
      ),);
    }

    // adicionar ou alterar
    notifyListeners();
  }

  //metódo para deletar / cancelar reserva solicitada
  void remove (Reserva user) {
    if (user != null && user.id != null) {
      _items.remove(user.id);
      notifyListeners();
    }
  }
}