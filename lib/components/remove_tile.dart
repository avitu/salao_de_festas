import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salao_de_festas00/models/app_routes.dart';
import '../models/reserva_vars.dart';
import '../provider/reservas_provider.dart';

//componente da tela de alugueis agendados
//lista das reservas realizadas

//ReservaTile
class RemoveTile extends StatelessWidget {

  final Reserva user;

  const RemoveTile(this.user);

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
        width: 50,
        child: Row(
          children: <Widget> [
            IconButton(
              onPressed: () {
                  showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: const Text('Excluir Reserva',
                          textAlign: TextAlign.center,
                        ),
                        content: const Text('Tem Certeza?',
                          textAlign: TextAlign.center,),
                        backgroundColor: Colors.cyan,
                        actions: <Widget>[
                          FlatButton(
                            onPressed: (){
                              Navigator.of(context).pop();
                            },
                            child: Text('Não'),
                          ),
                          FlatButton(
                            onPressed: (){
                              // exclui reserva
                              Provider.of<ReservaListProvider>(context, listen: false).remove(user);
                              Navigator.of(context).pop();
                            },
                            child: Text('Sim'),
                          ),
                        ],
                      ));

              },
              icon: Icon(Icons.delete),
              color: Colors.red,

            )
          ],
        ),
      ),
    );
  }
}