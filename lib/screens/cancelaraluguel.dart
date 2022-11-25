import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salao_de_festas00/components/remove_tile.dart';
import '../provider/reservas_provider.dart';

class CancelarAluguel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ReservaListProvider reserva = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Cancelar aluguéis"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: reserva.count,
        itemBuilder: (ctx, i) => RemoveTile(reserva.byIndex(i)),
      ),
    );
  }
}