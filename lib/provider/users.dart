import 'dart:math';

import 'package:flutter/material.dart';
import 'package:salao_de_festas00/data/dummy_users.dart';
import '../models/user.dart';
// provider

// Users >>> ReservaListProvider
class Users with ChangeNotifier{
  final Map<String, User> _items = {...DUMMY_USER};

  //metodo get, que vai retornar lista de reservas
  List <User> get all {
    return [..._items.values];
  }
  int get count {

    return _items.length;
  }

  //metodo byIndex
  User byIndex(int i ){
  return _items.values.elementAt(i);
  }

  //metodo put
  //passando um elemento que já existe ele altera
  //se não existir ele incluí
  //verifica se o usuário não é nulo
  void put(User user){
    if (user == null) {
      return;
    }

    //altera
    if (user.id != null &&
        user.id.trim().isNotEmpty &&
        _items.containsKey(user.id)) {
      _items.update(
        user.id,
            (_) => User(
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
      _items.putIfAbsent(id, () => User(
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
  void remove (User user) {
    if (user != null && user.id != null) {
      _items.remove(user.id);
      notifyListeners();
    }
  }
}