import 'package:flutter/material.dart';

class TeladeAluguel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Aluguel"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Volta para Primeira Página"),
          ),
        ),
      ),
    );
  }
}