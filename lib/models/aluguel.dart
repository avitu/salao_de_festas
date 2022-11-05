// formulário do aluguel

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:brasil_fields/brasil_fields.dart';

class Aluguel extends StatefulWidget {
  @override
  State<Aluguel> createState() => _AluguelState();
}

class _AluguelState extends State<Aluguel> {
  final _form = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _blocoeap = TextEditingController();
  final _email = TextEditingController();
  final _telefone = TextEditingController();

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
          children: <Widget> [
            //criação do formulário para envio das informações do morador
            Form(
              // Inserir dentro do forms, NOME // EMAIL // TELEFONE // BLOCO E APARTAMENTO //
              key: _form,
              child: TextFormField(
                controller: _name,
                style: TextStyle(fontSize: 22),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                  labelText: 'Nome',
                  prefixIcon: Icon(Icons.person_pin),
                ),
                keyboardType: TextInputType.name,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 9)),
            TextField(
              controller: _telefone,
              style: TextStyle(fontSize: 22),
              decoration: const InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                labelText: 'Telefone',
                prefixIcon: Icon(Icons.phone),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                TelefoneInputFormatter(),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 9)),
            TextField(
              controller: _email,
              style: TextStyle(fontSize: 22),
              decoration: const InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                labelText: 'E-mail',
                prefixIcon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            Padding(padding: EdgeInsets.only(top: 9)),
            TextField(
              controller: _blocoeap,
              style: TextStyle(fontSize: 22),
              decoration: const InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                labelText: 'Bloco e Apartamento',
                prefixIcon: Icon(Icons.home),
              ),
              keyboardType: TextInputType.name,
            ),

            Padding(padding: EdgeInsets.only(top: 5)),
            ElevatedButton(
              child: Text('Enviar Cadastro'),
              onPressed: (

                  ) {},
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