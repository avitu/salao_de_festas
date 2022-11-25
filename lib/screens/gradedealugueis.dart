import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salao_de_festas00/components/reserva_tile.dart';
import 'package:salao_de_festas00/provider/reservas_provider.dart';

//tela que mostra a lista de reservas já solicitadas
class  GradedeAluguel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ReservaListProvider reserva = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Grade de Alugueis',
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: reserva.count,
        itemBuilder: (ctx, i) => ReservaTile(reserva.byIndex(i)),
      ),
    );
  }
}