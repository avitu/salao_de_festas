import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salao_de_festas00/components/user_tile.dart';
import 'package:salao_de_festas00/provider/users.dart';
import '../models/app_routes.dart';

//tela que vai mostrar a lista de reservas já solicitadas

class GradedeAluguel extends StatelessWidget {
  const GradedeAluguel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Grade de Alugueis Agendados"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed(
                    AppRoutes.USER_FORM);
              },
              icon: const Icon(Icons.add),),
        ],
      ),
      body: ListView.builder(
          itemCount: users.count,
          itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}