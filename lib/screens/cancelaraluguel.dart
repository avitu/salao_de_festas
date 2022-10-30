import 'package:flutter/material.dart';

class CancelarAluguel extends StatelessWidget {
  const CancelarAluguel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela de Cancelamento de Aluguel"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10,),
          const Text('Em Fase de Desenvolvimento', style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w700
          ),),
          const SizedBox(height: 60,),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Volta para Primeira Página"),
            ),
          ),
        ],
      ),
    );
  }
}