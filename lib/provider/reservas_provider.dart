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
  void put(Reserva reserva){
    if (reserva == null) {
      return;
    }

    //altera
    if (reserva.id != null &&
        reserva.id.trim().isNotEmpty &&
        _items.containsKey(reserva.id)) {
      _items.update(
        reserva.id,
            (_) => Reserva(
            id: reserva.id,
            name: reserva.name,
            email: reserva.email,
            telefone: reserva.telefone,
            data: reserva.data,
            blocoeap: reserva.blocoeap,
            horario: reserva.horario,
            avatarurl: reserva.avatarurl,
      ),);
    } else {
      //incluindo, adicionando se não tiver presente
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(id, () => Reserva(
        id: id,
        name: reserva.name,
        email: reserva.email,
        telefone: reserva.telefone,
        data: reserva.data,
        avatarurl: reserva.avatarurl,
        blocoeap: reserva.blocoeap,
        horario: reserva.horario,
      ),);
    }

    // adicionar ou alterar
    notifyListeners();
  }

  //metódo para deletar / cancelar reserva solicitada
  void remove (Reserva reserva) {
    if (reserva != null && reserva.id != null) {
      _items.remove(reserva.id);
      notifyListeners();
    }
  }
}