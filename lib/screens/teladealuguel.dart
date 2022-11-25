import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:salao_de_festas00/models/reserva_vars.dart';
import '../provider/reservas_provider.dart';



/*class TeladeAluguel extends StatelessWidget {

  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  TeladeAluguel({Key? key}) : super(key: key);

  void _loadFormData(User user){
    _formData['id'] = user.id;
    _formData['name'] = user.name;
    _formData['email'] = user.email;
    _formData['telefone'] = user.telefone;
    _formData['blocoeap'] = user.blocoeap;
    _formData['data'] = user.data;
    _formData['horario'] = user.horario;
    _formData['avatarurl'] = user.avatarurl;

  }

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)?.settings.arguments as User;

    _loadFormData(user);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela de Aluguel"),
        centerTitle: true,
        actions: <Widget> [
          IconButton(
              onPressed: () {
                  final isValid = _form.currentState!.validate();

                  if(isValid) {
                    _form.currentState?.save();

                    //chamando provider
                    Provider.of<Users>(context, listen: false).put(
                      User(
                        id: _formData['id'].toString(),
                        name: _formData['name'].toString(),
                        telefone: _formData['telefone'].toString(),
                        email: _formData['email'].toString(),
                        data: _formData['data'].toString(),
                        avatarurl: _formData['avtarurl'].toString(),
                        blocoeap: _formData['blocoeap'].toString(),
                        horario: _formData['horario'].toString(),
                        ),
                    );

                    Navigator.of(context).pop();
                  }
              },
              icon: const Icon(Icons.save),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
            children: <Widget> [
              const Text("-----------------------------------------------",
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              const Text("Preencha seus dados",
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              const Text("-----------------------------------------------",
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              const Padding(padding: EdgeInsets.only(top: 9)),

              // inicio do formulário
              Form(
                key: _form,
                child: Column(
                  children: <Widget> [
                    TextFormField(
                      validator: (value){
                        if(value == null || value.isEmpty) {
                        return 'Campo obrigatório';
                      }
                        if (value.trim().length < 3){
                          return 'Nome muito curto. No mínimo 3 letras.';
                        }
                        return null;
                    },
                      initialValue: _formData['name'],
                      onSaved: (value) => _formData['name'] = value!,
                      style: const TextStyle(fontSize: 16),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                        labelText: 'Nome',
                        prefixIcon: Icon(Icons.person),
                      ),
                      keyboardType: TextInputType.name,
                      inputFormatters: [
                        FilteringTextInputFormatter.singleLineFormatter,
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 9)),
                    TextFormField(
                      enabled: true,
                      style: const TextStyle(fontSize: 16),
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'Campo obrigatório';
                        }
                        return null;

                      },
                      initialValue: _formData['email'],
                      onSaved: (value) => _formData['email'] = value!,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                        labelText: 'E-mail',
                        prefixIcon: Icon(Icons.email),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      inputFormatters: [
                        FilteringTextInputFormatter.singleLineFormatter,
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 9)),
                    TextFormField(
                      style: const TextStyle(fontSize: 16),
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'Campo obrigatório';
                        }
                        return null;

                      },
                      initialValue: _formData['telefone'],
                      onSaved: (value) => _formData['telefone'],
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
                    const Padding(padding: EdgeInsets.only(top: 9)),
                    TextFormField(
                      style: const TextStyle(fontSize: 16),
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'Campo obrigatório';
                        }
                        return null;

                      },
                      initialValue: _formData['blocoeap'],
                      onSaved: (value) => _formData['blocoeap'] = value!,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                        labelText: 'Bloco e Apartamento',
                        prefixIcon: Icon(Icons.home),
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    const Padding(padding: EdgeInsets.only(top: 9)),
                    TextFormField(
                      style: const TextStyle(fontSize: 16),
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'Campo obrigatório';
                        }
                        return null;

                      },
                      initialValue: _formData['data'],
                      onSaved: (value) => _formData['data'] = value!,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                        labelText: 'Data',
                        prefixIcon: Icon(Icons.date_range),
                      ),
                      keyboardType: TextInputType.datetime,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        DataInputFormatter(),
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 9)),
                    TextFormField(
                      style: const TextStyle(fontSize: 16),
                      validator: (value){
                        if (value == null || value.isEmpty) {
                          return 'Campo obrigatório. Digite apenas um horário (Manhã / Tarde / Noite)';
                        }
                        return null;

                      },
                      initialValue: _formData['horario'],
                      onSaved: (value) => _formData['horario'] = value!,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                        labelText: 'Horário',
                        prefixIcon: Icon(Icons.timer_rounded),
                      ),
                      keyboardType: TextInputType.text,
                      inputFormatters: [
                        FilteringTextInputFormatter.singleLineFormatter,
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 9)),
                    TextFormField(
                      enabled: true,
                      style: const TextStyle(fontSize: 16),
                      onSaved: (value) => _formData['avatarurl'] = value!,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                        labelText: 'Url do avatar',
                        prefixIcon: Icon(Icons.link),
                      ),
                      keyboardType: TextInputType.url,
                      inputFormatters: [
                        FilteringTextInputFormatter.singleLineFormatter,
                      ],
                    ),
                    const Padding(padding: EdgeInsets.only(top: 5)),
                    ElevatedButton(
                      child: const Text('Confirmar reserva'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),

        ],
      ),

    ),
    );

  }
}*/