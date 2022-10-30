import 'package:flutter/material.dart';

class GradedeAluguel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Grade de Alugueis Agendados"),
        centerTitle: true,
      ),
      body: Column(
        children: [
        const SizedBox(height: 10,),
        Text('Em Fase de Desenvolvimento', style: TextStyle(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700
        ),),
          const SizedBox(height: 60,),
          Center(
            child:
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Volta para Primeira Página"),
            ),
          ),
        ],
      ),
    );
  }
}