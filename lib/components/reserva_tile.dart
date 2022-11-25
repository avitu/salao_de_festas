import 'package:flutter/material.dart';
import 'package:salao_de_festas00/models/app_routes.dart';
import '../models/reserva_vars.dart';

//componente da tela de alugueis agendados
//lista das reservas realizadas

//ReservaTile
class ReservaTile extends StatelessWidget {

  final Reserva user;

  const ReservaTile(this.user);

  @override
  Widget build(BuildContext context){

    final avatar = user.avatarurl == null || user.avatarurl.isEmpty
    ? CircleAvatar(child: Icon(Icons.perm_identity, color: Colors.black87,),
    )
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarurl),);

    return ListTile(
      leading: avatar,
      title: Text(user.name + '\n' +user.blocoeap),
      subtitle: Text("Data " + user.data + '\n' + user.horario),
      style: ListTileStyle.list,
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget> [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.remove_red_eye),

            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                      AppRoutes.RESERVA_FORM,
                    arguments: user,
                  );
                },
                icon: Icon(Icons.edit),
            ),
          ],
        ),
      ),
    );
  }
}