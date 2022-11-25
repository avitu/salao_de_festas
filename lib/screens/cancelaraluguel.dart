import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salao_de_festas00/components/user_tile.dart';
import '../provider/users.dart';

class CancelarAluguel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Grade de Alugueis Agendados"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}