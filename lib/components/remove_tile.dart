import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/reserva_vars.dart';
import '../provider/reservas_provider.dart';

//componente da tela de alugueis agendados
//lista das reservas realizadas

//ReservaTile
class RemoveTile extends StatelessWidget {

  final Reserva reserva;

  const RemoveTile(this.reserva);

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
                          TextButton(
                            onPressed: (){
                              Navigator.of(context).pop();
                            },
                            child: Text('Não', textAlign: TextAlign.start, style: TextStyle(
                              color: Colors.black87
                            ),),
                          ),
                          TextButton(
                            onPressed: (){
                              // exclui reserva
                              Provider.of<ReservaListProvider>(context, listen: false).remove(reserva);
                              Navigator.of(context).pop();
                            },
                            child: Text('Sim', textAlign: TextAlign.start, style: TextStyle(
                                color: Colors.black87
                            ),),
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