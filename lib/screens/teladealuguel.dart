import 'package:flutter/material.dart';

class TeladeAluguel extends StatefulWidget {
  @override
  State<TeladeAluguel> createState() => _TeladeAluguelState();
}

class _TeladeAluguelState extends State<TeladeAluguel> {
  final _form = GlobalKey<FormState>();
  final _info = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Aluguel"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
        children: [
          Form(
            key: _form,
            child: TextFormField(
              controller: _info,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Volta para Primeira Página"),
          ),
        ],
        ),
      ),
    );
  }
}