import 'package:flutter/material.dart';
import 'package:salao_de_festas00/models/app_routes.dart';
import '../models/reserva_vars.dart';

//componente da tela de alugueis agendados
//lista das reservas realizadas

//ReservaTile
class ReservaTile extends StatelessWidget {

  final Reserva reserva;

  const ReservaTile(this.reserva);

  @override
  Widget build(BuildContext context){

    final avatar = reserva.avatarurl == null || reserva.avatarurl.isEmpty
    ? CircleAvatar(child: Icon(Icons.perm_identity, color: Colors.black87,),
    )
        : CircleAvatar(backgroundImage: NetworkImage(reserva.avatarurl),);

    return ListTile(
      leading: avatar,
      title: Text(reserva.name + '\n' +reserva.blocoeap),
      subtitle: Text("Data " + reserva.data + '\n' + reserva.horario),
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
                    arguments: reserva,
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