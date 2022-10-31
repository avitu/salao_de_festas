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
               style: TextStyle(fontSize: 22),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                    labelText: 'Nome',
                    prefixIcon: Icon(Icons.person_pin),
              ),
              keyboardType: TextInputType.name,

            ),
          ),
          // Inserir dentro do forms, NOME // BLOCO E APARTAMENTO // TELEFONE // EMAIL
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